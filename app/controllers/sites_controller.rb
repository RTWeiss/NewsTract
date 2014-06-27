class SitesController < ApplicationController

  def index
    # If the user is signed in, send them to the page with summarized articles
    if user_signed_in?
      redirect_to subscriptions_path
    else
      render :index
    end
  end

  def about

  end

  def faq

  end
  
end
