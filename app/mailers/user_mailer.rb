class UserMailer < ActionMailer::Base
  default :from => "hello@clockworkflies.com"
  
  def expire_email(user)
    mail(:to => user.email, :subject => "Subscription Cancelled")
  end

    def welcome_email(user)
    mail(:to => user.email, :subject => "Welcome!")
  end

      def invoice_payment_succeeded_email(user)
    mail(:to => user.email, :subject => "Receipt!")
  end

        def card_updated_email(user)
    mail(:to => user.email, :subject => "Card Updated!")
  end


        def subscription_updated_email(user)
    mail(:to => user.email, :subject => "Subscription Updated!")
  end


end


