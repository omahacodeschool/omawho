class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    user = User.create(params[:user])
    redirect_to user_path(user)
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update_attributes(params[:user])
    @message = "Profile updated successfully!"
    redirect_to edit_user_path(user)
  end

  def request_destroy
    if session[:user] && session[:user]["id"] == params[:id]
      render :request_destroy
    else
      @message = "You do not have permission"
      render :error_message
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to "/"
  end
end
