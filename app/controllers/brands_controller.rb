class BrandsController < ApplicationController
	def show
		@items = Brand.find( params[:id] ).items.paginate( :page => params[:page] )
	end

	def list
		@brands = Brand.search( params[:term] )
	end
end
