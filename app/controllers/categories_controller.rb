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
    @categories = Category.all
    @highlighted = Category.find(params[:id]).short_category_name
    if params[:page]
      @users = User.joins(:category).select("users.username, users.first_name, users.last_name, users.avatar, categories.name AS category_name, setseed(#{session[:seed]})").
      order("RANDOM()").where(category_id: params[:id]).page(params[:page])
      render "users/index"
    else
      @users = User.joins(:category).select("users.username, users.first_name, users.last_name, users.avatar, categories.name AS category_name, setseed(#{session[:seed]})").
      order("RANDOM()").where(category_id: params[:id]).page(1)
      render "users/index"
    end
  end

  def update
  end

  def destroy
  end
end

