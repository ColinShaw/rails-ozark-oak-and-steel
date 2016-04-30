class ProductImageUploader < CarrierWave::Uploader::Base

  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg)
  end
  
  #version :thumb do
  #  process :resize_to_fill => [200,200]
  #end
  
  #version :page do
  #  process :resize_to_fill => [600,600]
  #end
  
  #version :zoom do
  #  process :resize_to_fill => [1200,1200]
  #end
    
end
