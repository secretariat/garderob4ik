class Description< ActiveRecord::Base
	attr_accessible	:sku, :description
	belongs_to :item
	has_many :images
end
