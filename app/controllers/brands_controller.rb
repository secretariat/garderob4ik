class BrandsController < ApplicationController
	def show
		@items = Brand.find( params[:id] ).items
	end
end
