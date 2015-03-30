class CategoriesController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    category = Category.find(params[:category_id])
    @users = category.users
  end

  def update
  end

  def destroy
  end
end
