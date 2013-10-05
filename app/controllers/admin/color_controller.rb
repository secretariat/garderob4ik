class Admin::ColorController < ApplicationController
	layout "admin"

  def index
  	@colors = Color.all
  end

  def destroy
    @color = Color.find(params[:id])
    @color.destroy
    flash[:success] = t('crud.successful_destroy')
    redirect_to admin_color_index_url
  end

  def edit
  	@color = Color.find( params[:id] )
  end

  def update
  	@color = Color.find( params[:id] )
    @color.update_attributes(params[:color])
    if @istyle.save
      flash[:success] =  t('crud.successful_update')
      redirect_to admin_color_index_url
    else
      flash[:error] = t('crud.error')
      render :edit
    end
  end
end
