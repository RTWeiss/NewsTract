class ApplicationController < ActionController::Base
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # After signing in, the user is routed to their main subscriptions page, which shows the articles in tiles
  def after_sign_in_path_for(user)
   subscriptions_path
  end

end
