class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :destroy]

  def show
    @categories = Category.all
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
    params.require(:category).permit(:name, :photo)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
