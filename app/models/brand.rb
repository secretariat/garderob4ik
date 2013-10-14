class Brand< ActiveRecord::Base

	mount_uploader :logo, BrandLogoUploader

	has_many :items, :dependent => :destroy
	attr_accessible :name, :name_shown, :title, :logo, :logo_cache, :meta_d, :meta_k, :text, :active

	scope :visible,  where( :active => true )

	def self.search(search)
		if search
      visible.find(:all, :conditions => ['name LIKE ?', "#{search}%"] )
    end
	end

end