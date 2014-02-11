class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com"
  
  def expire_email(user)
    mail(:to => user.email, :subject => "Subscription Cancelled")
  end

    def welcome_email(user)
    mail(:to => user.email, :subject => "Welcome!")
  end
end