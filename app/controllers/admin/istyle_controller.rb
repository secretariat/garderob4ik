require 'will_paginate/array'
class Admin::IstyleController < AdminController
	layout "admin"

  def index
  	@istyles = Istyle.all
  end

  def destroy
    @istyle = Istyle.find(params[:id])
    @istyle.destroy
    flash[:success] = t('crud.successful_destroy')
    redirect_to admin_istyle_index_url
  end

  def edit
  	@istyle = Istyle.find( params[:id] )
  end

  def update
  	@istyle = Istyle.find( params[:id] )
    @istyle.update_attributes(params[:istyle])
    if @istyle.save
      flash[:success] =  t('crud.successful_update')
      redirect_to admin_istyle_index_url
    else
      flash[:error] = t('crud.error')
      render :edit
    end
  end

  def visibility
    @istyle = Istyle.find( params[:id] )
    @istyle.active = vis = @istyle.active==false ? true : false
    @istyle.save
    # if @brand.save
    #   @brand.items.update_all("visibility = #{vis}")
    # end
    # redirect_to admin_brands_url unless request.xhr?
  end

end
