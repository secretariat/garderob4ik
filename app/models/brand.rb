class Brand< ActiveRecord::Base

	has_many :items
	attr_accessible :brand_name, :brand_name_shown

	def self.search(search)
		if search
      # find(:all, :conditions => ['brand_name LIKE ?', "b%"] )
      find(:all, :conditions => ['brand_name LIKE ?', "#{search}%"] )
    end
	end

end