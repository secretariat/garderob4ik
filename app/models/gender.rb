class Gender < ActiveRecord::Base
	has_many :categories

	attr_accessible :gender_name
end