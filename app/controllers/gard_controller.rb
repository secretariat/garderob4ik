class GardController < ShopController
  def all
  	@items = Item.paginate( :page => params[:page] )
  	@styles = Istyle.all
  	@categories = Category.all
  	@width = Width.all
  	@colors = Color.all
  	@sizes = Size.all
    @materials = Material.all
  end

  def show
  	@item = Item.find( params[:id] )
  end
end
