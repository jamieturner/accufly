class ApplicationController < ActionController::Base
 #Configure devise to handled nested address



protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def after_sign_in_path_for(resource)
    case current_user.roles.first.name
      when 'admin'
        users_path
      when 'silver'
        #content_silver_path
        root_path
      when 'gold'
        #content_gold_path
        root_path
      when 'platinum'
        #content_platinum_path
        root_path
      else
        root_path
    end
  end
  

  protected


end