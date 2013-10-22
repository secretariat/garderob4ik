class Item < ActiveRecord::Base

  searchable do
    time :created_at
  end

	belongs_to :category
  belongs_to :brand
	belongs_to :width
  belongs_to :istyle
  belongs_to :material
	has_one :description
  has_and_belongs_to_many :colors
  has_and_belongs_to_many :sizes


	self.per_page = 28

  attr_accessible :image_path,
      						:brandname,
      						:productname,
      						:price_usd,
      						:price_ua,
      						:discount,
                  :msrp_ua

end
