class AdminMailer < ApplicationMailer
  #gets all the user emails from the User model
  default to: Proc.new { User.pluck(:email) },
          from: 'admin@omawho.com'

  def admin_email(subject,message)
    @message = message
    mail(subject: subject)
  end

end
