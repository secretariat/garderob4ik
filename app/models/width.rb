# -*- encoding : utf-8 -*-
class Width< ActiveRecord::Base

	 has_many :items

	 attr_accessible	:name_us,
      							:name_ru

end