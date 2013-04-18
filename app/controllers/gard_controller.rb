class GardController < ApplicationController
  def all
  	@shoes = Shoes.paginate(:page => params[:page] )
  end
end
