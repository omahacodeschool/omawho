class SessionsController < ApplicationController
  def new
    render text: "This is the login page"
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember_me])
      redirect_to root_path
    else
      redirect_to login_path, notice: "Incorrect username or password"
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
