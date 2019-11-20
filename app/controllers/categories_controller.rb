class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_category, only: [:show, :destroy]

  def index
    @categories = Category.all
    @products = Product.all
  end

  def show
    @categories = Category.all
    @product = Product.new
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def destroy
    @category.delete
  end

  private

  def category_params
    params.require(:category).permit(:name, :photo, :photo_card)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
