class Shoes < ActiveRecord::Base
	self.per_page = 40

  attr_accessible :image_path,
      						:brandname,
      						:productname,
      						:price_usd,
      						:price_ua,
      						:discount
end
