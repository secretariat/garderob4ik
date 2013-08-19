class Image < ActiveRecord::Base
	belongs_to :description
	attr_accessible :description_id,
      						:thumb_path,
      						:image_path,
      						:zoom_path
end