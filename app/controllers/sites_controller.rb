class SitesController < ApplicationController

  def index
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
