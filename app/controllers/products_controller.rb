class ProductsController < ApplicationController
  
  def index
    @products=Product.all()
    @categories=Category.all()
  end

  def show
    @product=Product.friendly.find(params[:id])
  end
  
end
