class Drop < ApplicationRecord
  has_one_attached :file

  def file_path
    ActiveStorage::Blob.service.path_for(file.key)
  end

end
