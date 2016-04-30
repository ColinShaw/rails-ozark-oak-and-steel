class Image < ActiveRecord::Base
 
  has_and_belongs_to_many :products, :autosave => true
  mount_uploader :image, ProductImageUploader
  
  def has_attached_image?
    !self.image.url.nil?
  end
  
  def image_url
    self.image.url
  end
  
end
