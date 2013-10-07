class CategoryController < ApplicationController
  def show
  	@items = Category.find(params[:id]).items.paginate( :page => params[:page] )
		@styles = Istyle.all
		@categories = Category.all
		@materials = Material.all
		@width = Width.all
  	@colors = Color.all
  	@sizes = Size.all

		render "/gard/all"
  end
end
