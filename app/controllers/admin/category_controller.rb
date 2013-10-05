class Admin::CategoryController < ApplicationController
  layout "admin"

  def index
  	@categories = Category.all
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:success] = t('crud.successful_destroy')
    redirect_to admin_category_index_url
  end

  def edit
  	@category = Category.find( params[:id] )
  end

  def update
  	@category = Category.find( params[:id] )
    @category.update_attributes(params[:category])
    if @category.save
      flash[:success] =  t('crud.successful_update')
      redirect_to admin_category_index_url
    else
      flash[:error] = t('crud.error')
      render :edit
    end
  end
end
