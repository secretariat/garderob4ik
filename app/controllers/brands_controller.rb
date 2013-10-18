class BrandsController < ShopController
	def show
		@items = Brand.find(params[:id]).items.paginate( :page => params[:page] )
		@styles = Istyle.all
		@categories = Category.all
		@width = Width.all
	 	@colors = Color.all
  	@sizes = Size.all
    @materials = Material.all

    render "gard/all"
	end

	def list
		@brands = Brand.search( params[:term] )
	end
end
