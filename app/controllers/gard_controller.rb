class GardController < ApplicationController
  def all
  	@items = Item.paginate( :page => params[:page] )
  end

  def show
  	@item = Item.find( params[:id] )
  end
end
