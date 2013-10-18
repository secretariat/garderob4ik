class MaterialController < ShopController
  def show
  	@items = Material.find(params[:id]).items.paginate( :page => params[:page] )
		@styles = Istyle.all
		@categories = Category.all
		@width = Width.all
		@materials = Material.all
	 	@colors = Color.all
  	@sizes = Size.all

		render "/gard/all"
  end
end
