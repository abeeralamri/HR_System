class UserMailer < ApplicationMailer
    default from: 'notifications@hrsystem.com'
    def send_welcome_email(user)
        @user = user 
        mail(to: user.email , subject: "Welcome to HR system, #{@user.email}!")
      end
end
