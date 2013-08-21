class GardController < ApplicationController
  def all
  	@items = Item.paginate( :page => params[:page],:per_page => 20)
  	@styles = Style.all
  	@categories = Category.all
  	@width = Width.all
  	@colors = Color.all
  	@sizes = Size.all
  end

  def show
  	@item = Item.find( params[:id] )
  end
end
