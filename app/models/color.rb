class Color< ActiveRecord::Base

	self.per_page = 28

	has_and_belongs_to_many :items
	attr_accessible	:name_us,
	  							:name_ru

end