class ProductsController < ApplicationController

    helper_method :cart

    def index
        @cart = cart
    end

    def add
        cart
        session[:cart] << params[:product]
        flash[:item] = params[:product]
        redirect_to products_path
    end

end