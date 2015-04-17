class UserMailer < ApplicationMailer
  address = Mail::Address.new "sumeet+omawho@bigwheelbrigade.com"
  address.display_name = "Omawho"
  address.format
  
  default from: address

  def welcome_mail(user)
    @user = user
    @url = "http://www.omawho.com/login"
    mail(to: @user.email, subject: 'Welcome to Omawho')
  end

  def reset_password_email(user)
    @user = User.find user.id
    @url  = edit_password_reset_url(@user.reset_password_token)
    mail(:to => user.email,
         :subject => "Your password has been reset")
  end
end
