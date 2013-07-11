class PageController < ApplicationController
  def index
  	@barnds = Brand.all.limit(15)
  end
end
