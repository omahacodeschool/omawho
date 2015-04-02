class UsersController < ApplicationController
  before_action :require_login, only: [:edit, :request_destroy, :destroy]

  def index
    @users = User.all.page(1)
  end

  def page
    @users = User.all.page(params[:page])
    @users.to_json
  end

  def create
    user = User.create(user_params)
    auto_login(user)
    redirect_to edit_user_path(user.username)
  end

  def user_params
    params.require(:user).permit(:email, :username, :password,
    :password_confirmation, :first_name, :last_name)
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
    @categories_array = []
    @categories.each do |x|
      @categories_array.push x.name
    end
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
    user = User.find_by_username(params[:username])
    user.update_attributes(params[:user])
    user.save
    @message = "Profile updated successfully!"
    redirect_to user_path(user.username)
  end

  def request_destroy
    @username = params[:username]
  end

  def destroy
    user = User.find_by_username(params[:username])
    user.destroy
    redirect_to root_path, notice: "Your account has been deleted."
  end

  def crypted_password
    BCrypt::Password.new(read_attribute(:crypted_password))
  end

  def crypted_password=(password)
    write_attribute(:crypted_password, BCrypt::Password.create(password))
  end

end
