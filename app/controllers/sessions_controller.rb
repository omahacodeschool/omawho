class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:user][:email].downcase)
    if user && user.crypted_password == params[:user][:password]
      session[:user] = user
      redirect_to root_path
    else
      @message = "Incorrect email or password."
      render "users/login"
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end
