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

  def default_url(*args)
    #   # For Rails 3.1+ asset pipeline compatibility:
    #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
      "no_image.jpg"
    #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end
end
