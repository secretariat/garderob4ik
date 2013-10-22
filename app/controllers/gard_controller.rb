class GardController < ShopController

  def all
    @search = Item.search do
      # fulltext params[:search]
      with(:created_at).less_than(Time.zone.now)
      order_by(:created_at, :desc)
    end
    @items = @search.results
  	# @items = Item.paginate( :page => params[:page] )
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
