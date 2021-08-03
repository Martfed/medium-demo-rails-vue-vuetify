class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    product = Product.new(product_params)
    product.store = Store.first
    if product.save
      render json: {
        success: true,
        data: product
      }, status: 200
    else
      render json: {
        success: false,
        message: 'something went wrong with creation on the product'
      }, status: 400
    end
  end

  private

  def product_params
    params.require(:product).permit(:name)
  end
end
