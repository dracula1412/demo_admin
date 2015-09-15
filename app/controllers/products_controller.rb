class ProductsController < ApplicationController
  def index
    @products = Product.available
  end
  def show
    @product = Product.find params[:id]
  end
  def buy
    @product = Product.find params[:id]
    order = params[:product][:quantity].to_i || 1
    if order > @product.quantity
      redirect_to @product
    else
      @product.update_attribute(:quantity, @product.quantity - order)
      Order.create(product: @product, user: current_user, quantity: order)
      redirect_to products_path
    end
  end
end
