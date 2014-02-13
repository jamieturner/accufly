Stripe.api_key = ENV["STRIPE_API_KEY"]
STRIPE_PUBLIC_KEY = ENV["STRIPE_PUBLIC_KEY"]

StripeEvent.setup do
  subscribe 'customer.subscription.deleted' do |event|
    user = User.find_by_customer_id(event.data.object.customer)
    user.expire
  end
end



StripeEvent.setup do
  subscribe 'charge.succeeded' do |event|
    user = User.find_by_customer_id(event.data.object.customer)
    UserMailer.welcome_email(user).deliver

  end
end

StripeEvent.setup do
  subscribe 'invoice.payment_succeeded' do |event|
    user = User.find_by_customer_id(event.data.object.customer)
    UserMailer.invoice_payment_succeeded_email(user).deliver

  end
end

