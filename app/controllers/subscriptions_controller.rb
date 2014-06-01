class SubscriptionsController < ApplicationController
  
  before_action :authenticate_user!
  
  def index
    @subscriptions = current_user.subscriptions
  end

  def create
    # If the user is already subscribed to the topic
    if current_user.subscriptions.find_by_topic_id(params[:topic_id])
        #Do nothing for now
    else
      #Create a new subscription for the user to the topic
      Subscription.create(user_id: current_user.id, topic_id: params[:topic_id])
    end
    redirect_to topics_path
  end

  def destroy
    Subscription.find(params[:id]).destroy
    redirect_to topics_path
  end
  
end