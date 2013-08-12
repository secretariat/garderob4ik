class GardController < ApplicationController
  def all
  	@items = Item.paginate( :page => params[:page] )
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
