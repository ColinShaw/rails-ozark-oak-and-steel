class Category < ActiveRecord::Base
  
	has_and_belongs_to_many :products
	
	def formatted_name
	  self.name.downcase.gsub(/\b\w/){ $&.upcase }
	end
	
end
