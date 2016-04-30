class Product < ActiveRecord::Base
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history, :finders]
  
  has_and_belongs_to_many :categories
  #validates :categories, presence: true  
  
  has_and_belongs_to_many :images
  
  
  def has_image_model?
    !self.images.first().nil?
  end
  
  def has_main_image?
    !self.images.find_by_main_image(true).nil?
  end
  
  def has_attached_image?
    !self.images.find_by_main_image(true).image.url.nil?
  end
  
  def ordered_images
    self.images.order('main_image desc').order('display_order asc').order('name asc')
  end
  
  def unselect_main_image
    self.images.each do |i|
      i.main_image=false
      i.save
    end
  end
  
  def select_main_image_by_id(id)
    if !self.images.find(id).nil?
      self.unselect_main_image
      i=self.images.find(id)
      i.main_image=true
      i.save
    end
  end  
   
  # This may not be needed or desireable depending on how our form works out 
  def select_main_image_by_name(name)
    if !self.images.find_by_name(name).nil?
      self.unselect_main_image
      i=self.images.find_by_name(name)
      i.main_image=true
      i.save
    end
  end
  
  def main_image_url
    self.images.find_by_main_image(true).image.url
  end
  
  def main_image_alt_tag
    self.images.find_by_main_image(true).alt_tag
  end
  
  def formatted_name
    self.name.downcase.gsub(/\b\w/){ $&.upcase }
  end
  
  def formatted_description
    self.description.downcase
  end
  
  def formatted_details
    self.details.downcase
  end
  
  def formatted_punchline
    self.punchline.downcase
  end
  
  def formatted_price
    ActionController::Base.helpers.number_to_currency(self.price, precision: 0, separator: '', delimiter: '')
  end
  
end
