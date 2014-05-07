class RegistrationsController < Devise::RegistrationsController
  protected

  # After signing up, the user is routed to /topics
  def after_sign_up_path_for(user)
    topics_path
  end

end