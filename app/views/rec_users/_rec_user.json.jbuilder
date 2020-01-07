json.extract! rec_user, :id, :object_name, :code, :user_in_out, :rec_comment, :created_at, :updated_at
json.url rec_user_url(rec_user, format: :json)
