class CategoriesController < ApplicationController
  before_action :set_random_seed, only: [:show, :page]

  def set_random_seed
    session[:seed] ||= rand
    session[:seed] = rand if !params[:page]
  end

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
    @user = User.new
    
    User.connection.execute("select setseed(#{session[:seed]})")

    @users = User.joins(:categories).select("users.id, users.username, users.first_name, users.last_name, users.avatar, categories.name AS category_name").
    order("RANDOM()").where("categories_users.category_id = ?", params[:id]).page(1)

    render "users/index"
  end

  def page
    User.connection.execute("select setseed(#{session[:seed]})")

    @users = User.joins(:categories).select("users.id, users.username, users.first_name, users.last_name, users.avatar, categories.name AS category_name").
    order("RANDOM()").where("categories_users.category_id = ?", params[:id]).page(params[:page])

    render partial: 'partials/polaroid'
  end

  def update
  end

  def destroy
  end
end
