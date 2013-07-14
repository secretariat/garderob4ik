# -*- encoding : utf-8 -*-
class Admin::BrandsController < ShopController

	layout "admin"

  before_filter :find_brand, :only => [:update, :edit, :destroy, :visibility]

  def index
  	@brands = Brand.find(:all)
  end

  def visibility
    @brand.active = vis = @brand.active==false ? true : false
    @brand.save
    # if @brand.save
    #   @brand.items.update_all("visibility = #{vis}")
    # end
    # redirect_to admin_brands_url unless request.xhr?
  end

  private

  def find_brand
    @brand = Brand.find params[:id]
  end

end
