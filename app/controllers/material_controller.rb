class MaterialController < ApplicationController
  def show
  	@items = Material.find(params[:id]).items.paginate( :page => params[:page] )
		@styles = Style.all
		@categories = Category.all
		@materials = Material.all
	 	@colors = Color.all
  	@sizes = Size.all

		render "/gard/all"
  end
end
