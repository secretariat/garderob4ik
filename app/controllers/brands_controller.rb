class BrandsController < ApplicationController
	def show
		@items = Brand.visible.items.paginate( :page => params[:page] )
		@styles = Istyle.all
		@categories = Category.all
		@width = Width.all
	 	@colors = Color.all
  	@sizes = Size.all
    @materials = Material.all
	end

	def list
		@brands = Brand.search( params[:term] )
	end
end
