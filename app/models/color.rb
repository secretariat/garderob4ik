class Color< ActiveRecord::Base

	 has_and_belongs_to_many :items
	 attr_accessible	:color_name,
      							:color_name_ru

end