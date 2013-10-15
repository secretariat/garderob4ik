# -*- encoding : utf-8 -*-
class Size< ActiveRecord::Base

	 has_and_belongs_to_many :items

	 attr_accessible	:size_value,
      							:size_value_ru

end