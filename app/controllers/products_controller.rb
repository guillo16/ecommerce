class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @categories = Category.all
    @category = Category.find(params[:category_id])
    @product = Product.new(product_params)
    @product.user = current_user
    @product.category = @category
    if @product.save
      redirect_to products_path
    else
      render 'categories/show'
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :image)
  end
end
