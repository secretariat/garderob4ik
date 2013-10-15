class Category < ActiveRecord::Base

	belongs_to :departments
	belongs_to :gender
	has_many :items

	attr_accessible :gender_id,
    							:departments_id,
      						:name_us,
      						:name_ru,
      						:cat_link

end
