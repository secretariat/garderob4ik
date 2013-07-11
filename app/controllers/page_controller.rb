class PageController < ApplicationController
  def index
  	@brands = Brand.limit(11)
  end
end
