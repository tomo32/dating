class PostImageUploader < CarrierWave::Uploader::Base
  storage :file

  process :get_exif_info

  def get_exif_info
    require 'exifr/jpeg'
    exif = EXIFR::JPEG::new(self.file.file)
  end

  include CarrierWave::RMagick

  process :resize_to_limit => [700, 700]
  process :convert => 'jpg'

  version :thumb do
    process :resize_to_limit => [300, 300]
  end

  def store_dir
    "uploads/photos/"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    Time.now.strftime('%Y%m%d%H%M%S') + original_filename + '.jpg' if original_filename.present?
  end
end
