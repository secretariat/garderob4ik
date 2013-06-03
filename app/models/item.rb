class Item < ActiveRecord::Base
	belongs_to :category
	belongs_to :brand
	has_one :description
  has_and_belongs_to_many :colors
  has_and_belongs_to_many :sizes


	self.per_page = 40

  attr_accessible :image_path,
      						:brandname,
      						:productname,
      						:price_usd,
      						:price_ua,
      						:discount

end
