# -*- encoding : utf-8 -*-
class Istyle< ActiveRecord::Base
	has_many :items
	attr_accessible :name_us, :name_ru, :link
end
