class UsersController < ApplicationController
  before_action :require_login, only: [:edit, :request_destroy, :destroy]
  before_action :set_random_seed

  def set_random_seed
    session[:seed] ||= rand
  end

  def index
    @categories = Category.all
    @users = User.joins(:category).select("users.username, users.first_name, users.last_name, users.avatar, categories.name AS category_name, setseed(#{session[:seed]})").
    order("RANDOM()").page(1)
  end

  def page
    @users = User.joins(:category).select("users.username, users.first_name, users.last_name, users.avatar, categories.name AS category_name, setseed(#{session[:seed]})").
    order("RANDOM()").page(1).to_json
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to edit_user_path(@user.username)
    else
      @categories = Category.all
      render :new
    end
  end

  def edit_params
    params.require(:user).permit(:email, :username, :category_id,
    :first_name, :last_name, :avatar, :bio, :website, :company, :company_site,
    :facebook, :dribbble, :twitter, :linkedin, :github, :pinterest, :instagram,
    :tagline, :tumblr, :googleplus)
  end

  def user_params
    params.require(:user).permit(:email, :username, :password, :category_id,
    :password_confirmation, :first_name, :last_name, :avatar)
  end

  def admin_email
    if session[:admin]
      render :admin_email
    else
      flash.notice = "Forbidden: requires administrator access"
      render :error_message
    end
  end

  def new
    @categories = Category.all
  end

  def login
  end

  def forgot_password_form
  end

  def assign_new_password
    @user = User.find_by_email(params[:user][:email.downcase])
  end


  def edit
    @categories = Category.all
    @user = User.find_by_username(params[:username])
  end

  def show
    if @user = User.find_by_username(params[:username])
      render :show
    else
      redirect_to root_path
    end
  end

  def update
    @user = User.find_by_username(params[:username])
    if @user.update_attributes(edit_params)
      @message = "Profile updated successfully!"
      redirect_to user_path(@user.username)
    else
      @categories = Category.all
      render :edit
    end
  end

  def request_destroy
    @username = params[:username]
  end

  def destroy
    user = User.find_by_username(params[:username])
    user.destroy
    redirect_to root_path, notice: "Your account has been deleted."
  end
end
