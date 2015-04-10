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
    @users = User.joins(:category).select("users.id, users.username, users.first_name, users.last_name, users.avatar, categories.name AS category_name, setseed(#{session[:seed]})").
    order("RANDOM()").where(category_id: params[:id]).page(1)
    render "users/index"
  end

  def page
    @users = User.joins(:category).select("users.id, users.username, users.first_name, users.last_name, users.avatar, categories.name AS category_name, setseed(#{session[:seed]})").
    order("RANDOM()").where(category_id: params[:id]).page(params[:page])
    render partial: 'partials/polaroid'
  end

  def update
  end

  def destroy
  end
end
