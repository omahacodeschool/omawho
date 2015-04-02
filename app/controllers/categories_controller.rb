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
    if params[:page]
      @users = category.users.page(params[:page])
    else
      @users = category.users.page(1)
    end
  end

  def update
  end

  def destroy
  end
end
