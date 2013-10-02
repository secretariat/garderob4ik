require 'will_paginate/array'
class StyleController < ApplicationController
	def show
		@items = Istyle.find(params[:id]).items.paginate( :page => params[:page] )
		@styles = Istyle.all
		@categories = Category.all
		@width = Width.all
	 	@colors = Color.all
  	@sizes = Size.all
  	@materials = Material.all

		render "/gard/all"
	end
end
