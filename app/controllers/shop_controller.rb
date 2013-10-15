# -*- encoding : utf-8 -*-
class ShopController < ApplicationController

  before_filter :load_catalog
  before_filter :get_store_data
  before_filter :latest_news

  def change
    session[:currency] = params[:currency]
    redirect_to request.env['HTTP_REFERER']
  end

  private

    def order_by
      unless params[:order].nil?
        return "created_at DESC" if params[:order] == "date"
        params[:order]
      else
        "price"
      end
    end

    def load_catalog
      @categories = Category.visible.includes(:subcategories).where(:subcategories=>{:visibility=>true}).order('subcategories.priority')
      @brands_for_filter = Brand.alphabetical
      @contacts = Text.find(6)
      @banners_left = Placement.find(9).banners.order(:position)
      @banners_right = Placement.find(10).banners.order(:position)
    end

    def get_store_data
      @cart = find_cart
      session[:currency] = "uah" if session[:currency].nil?
    end

    def find_cart
      session[:cart] ||= Cart.new
    end

    def latest_products
      @latest_products = Product.latest
    end

    def latest_news
      @latest_news = Publication.latest
    end

end
