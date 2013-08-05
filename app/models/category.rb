class Category < ActiveRecord::Base

	belongs_to :departments
	belongs_to :gender
	has_many :items

	attr_accessible :gender_id,
    							:departments_id,
      						:cat_name_en,
      						:cat_name_ru,
      						:cat_link

end
