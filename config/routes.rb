RailsStripeMembershipSaas::Application.routes.draw do
  resources :addresses
  mount StripeEvent::Engine => '/stripe'
  get "content/gold"
  get "content/silver"
  get "content/platinum"
  authenticated :user do
    root :to => 'static_pages#home'
  end
  root :to => "static_pages#home"
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    put 'update_plan', :to => 'registrations#update_plan'
    put 'update_card', :to => 'registrations#update_card'
  end
  resources :users

    match '/about',  to: 'static_pages#about',         via: 'get'
    match '/faqs',  to: 'static_pages#faqs',         via: 'get'
    match '/termsandconditions',  to: 'static_pages#terms',         via: 'get'
    match '/privacypolicy',  to: 'static_pages#privacy',         via: 'get'



end