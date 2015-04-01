class AdminMailer < ApplicationMailer
  default to: Proc.new { User.pluck(:email) } #gets all the user emails from the User model
            from: 'admin@omawho.com'

  def admin_email(subject,message)
    @message = message
    mail(subject: subject)
  end

end
