class GardController < ApplicationController
  def all
  	@items = Item.paginate(:page => params[:page] )
  end
end
