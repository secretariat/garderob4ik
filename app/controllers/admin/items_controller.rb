# -*- encoding : utf-8 -*-
class Admin::BrandsController < ShopController

	layout "admin"

  before_filter :find_brand, :only => [:update, :edit, :destroy, :visibility]

  def index
    @brands = Brand.order(:name_shown)
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(params[:brand])
    if @brand.save
      flash[:success] = t('crud.successful_create')
      redirect_to admin_brands_url
    else
      flash[:error] = t('crud.error')
      render :action => :new
    end
  end

  def edit
  end

  def update
    @brand.update_attributes(params[:brand])
    if @brand.save
      flash[:success] =  t('crud.successful_update')
      redirect_to admin_brands_url
    else
      flash[:error] = t('crud.error')
      render :edit
    end
  end

  def destroy
    @brand.destroy
    flash[:success] = t('crud.successful_destroy')
    redirect_to admin_brands_url
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
