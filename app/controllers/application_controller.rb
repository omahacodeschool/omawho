class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def not_authenticated
    redirect_to main_app.login_path, notice: "Please log in first"
  end
end
