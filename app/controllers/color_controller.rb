class ColorController < ApplicationController
  def show
  	@items = Color.find(params[:id]).items.paginate( :page => params[:page] )
		@styles = Style.all
		@categories = Category.all
		@width = Width.all
	 	@colors = Color.all
  	@sizes = Size.all

		render "/gard/all"
  end
end
