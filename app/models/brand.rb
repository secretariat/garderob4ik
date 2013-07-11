class Brand< ActiveRecord::Base

	has_many :items
	attr_accessible :brand_name

end