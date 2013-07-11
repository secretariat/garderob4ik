class Brand< ActiveRecord::Base

	has_many :items
	attr_accessible :brand_name, :brand_name_shown

end