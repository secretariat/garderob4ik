class Departments < ActiveRecord::Base

	has_many :categories

	attr_accessible	:dep_name_en,
									:dep_name_ru,
									:dep_link,
									:active

end