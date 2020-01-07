require 'sendgrid-ruby'
include SendGrid

class ProcessDropJob < ApplicationJob
  queue_as :default

  # Database calls to add records
  def add_to_db(object_type, block)
    if object_type.downcase == 'compliance'
      Compliance.create(block)
    elsif object_type.downcase == 'construction'
      Construction.create(block)
    elsif object_type.downcase == 'glass'
      Glass.create(block)
    elsif object_type.downcase == 'dhw-generator'
      DhwGenerator.create(block)
    elsif object_type.downcase == 'hvac-system'
      HvacSystem.create(block)
    elsif object_type.downcase == 'zone'
      Zone.create(block)
    elsif object_type.downcase == 'wall'
      Wall.create(block)
    elsif object_type.downcase == 'window'
      Window.create(block)
    elsif object_type.downcase == 'door'
      Door.create(block)
    elsif object_type.downcase == 'rec-user'
      RecUser.create(block)
    elsif object_type.downcase == 'general'
      General.create(block)
    end
  end

  # Send email to ENV variable
  def email
    from = Email.new(email: 'conbractor@gmail.com')
    to = Email.new(email: ENV['EMAIL'])
    subject = 'Finished processing your file!'
    content = Content.new(type: 'text/plain', value: 'Hooray! Go team!')
    mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end

  # Called by perform_now/later. Loop through file and parse records.
  def perform(*args)
    file = File.open(args[0].file_path) # Open file via filepath
    types = Hash("GENERAL" => [], "COMPLIANCE" => [], "CONSTRUCTION" => [], "GLASS" => [], "DHW-GENERATOR" => [],
        "HVAC-SYSTEM" => [], "ZONE" => [], "WALL" => [], "WINDOW" => [], "DOOR" => [], "REC-USER" => [],
        "REC-PROJECT" => []) # not necessary, but might as well keep all records stored in memory
    while (line = file.gets) do # continue until EOF
      if line == "\n" or line.match(/\$/) # empty line or comment
        print "Skip empty line or comment."
      elsif line.match(/\.\./).nil? # doesn't contain '..'
        next_is_new = true
        object_type = ""
        block = Hash.new # a single db record
        while line.match(/\.\./).nil? # capture inside of here
          split = line.partition('=')
          value = split.last.strip.delete('"')
          key = split.first.strip.delete('"')
          if next_is_new # if Object Name and Object Type line
            object_type = value
            block["object_name"] = key
          else
            if key.downcase == "type"
              key = "type_0"
            end
            block[key.downcase.gsub("-", "_")] = value
          end
          line = file.gets
          if line.match(/\.\./) # if end of record, flag next record as new
            next_is_new = true
          else
            next_is_new = false
          end
        end
        types[object_type].push(block) # save to memory, although unused :(
        add_to_db(object_type, block) # add to database
      end
    end
    email
  end
end