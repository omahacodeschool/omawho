class UsersController < ApplicationController
  def index
    @users = User.paginate(1)
  end

  def page
    @users = User.paginate(params[:number])
  end

  def create
    user = User.create(user_params)
    redirect_to user_path(user.username)
  end

  def user_params
    params[:user][:crypted_password] = BCrypt::Password.create(params[:user][:crypted_password])
    params[:user][:email].downcase!
    params[:user][:username].downcase!
    params.require(:user).permit(:email, :crypted_password, :salt, :username)
  end

  def new

  end

  def login

  end

  def forgot_password_form
  end

  def assign_new_password
    @user = User.find_by_email(params[:user][:email.downcase])
    random_password = Array.new(10).map { (65 + rand(58)).chr }.join
    @user.crypted_password = random_password
    if @user.save
      Mailer.create_and_deliver_password_change(@user, random_password)
    else
      @message = "Assign new password failed"
      render :error_message
    end
  end


  def edit
    @user = User.find_by_username(params[:username])
  end

  def show
    @user = User.find_by_username(params[:username])
  end

  def update
    user = User.find_by_username(params[:username])
    user.update_attributes(params[:user])
    user.save
    @message = "Profile updated successfully!"
    redirect_to user_path(user.username)
  end

  def request_destroy
    if session[:user] && session[:user]["username"] == params[:username]
      render :request_destroy
    else
      @message = "You do not have permission"
      render :error_message
    end
  end

  def destroy
    if session[:user] && session[:user]["username"] == params[:username]
      user = User.find(session[:user]["id"])
      user.destroy
      @message = "Your account has been deleted"
      render :error_message
    else
      @message = "You do not have permission"
      render :error_message
    end
  end

  def crypted_password
    BCrypt::Password.new(read_attribute(:crypted_password))
  end

  def crypted_password=(password)
    write_attribute(:crypted_password, BCrypt::Password.create(password))
  end

end
