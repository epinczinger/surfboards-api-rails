class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_and_set_user, except: %i[index show]
  before_action :require_admin, only: %i[destroy create update]

  def show
    @product = Product.all.find(params[:id])
    render json: @product
  end

  def index
    @products = Product.all
    render json: @products
  end

  def create
    @new_product = Product.new(product_params)
    @new_product.save
    render json: { result: 'Product Created.' }
  rescue StandardError
    render json: { result: 'Error when creating.' }
  end

  def destroy
    @to_destroy = Product.find(params[:id])
    @to_destroy.destroy
    render json: { result: 'Product deleted' }
  rescue StandardError
    render json: { result: 'Error when deleting' }
  end

  private

  def product_params
    params.require(:product).permit(:model, :brand, :category, :price, :description, :image_url)
  end
end
