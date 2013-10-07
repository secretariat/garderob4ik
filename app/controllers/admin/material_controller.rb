class Admin::MaterialController < AdminController
  layout "admin"

  def index
  	@materials = Material.all
  end

  def destroy
    @material = Material.find(params[:id])
    @material.destroy
    flash[:success] = t('crud.successful_destroy')
    redirect_to admin_material_index_url
  end

  def edit
  	@material = Material.find( params[:id] )
  end

  def update
  	@material = Material.find( params[:id] )
    @material.update_attributes(params[:material])
    if @material.save
      flash[:success] =  t('crud.successful_update')
      redirect_to admin_material_index_url
    else
      flash[:error] = t('crud.error')
      render :edit
    end
  end

end
