class Item < ActiveRecord::Base
	belongs_to :category
  belongs_to :brand
	belongs_to :width
  belongs_to :style
  belongs_to :material
	has_one :description
  has_and_belongs_to_many :colors
  has_and_belongs_to_many :sizes


	self.per_page = 25

  attr_accessible :image_path,
      						:brandname,
      						:productname,
      						:price_usd,
      						:price_ua,
      						:discount,
                  :msrp_ua

end
