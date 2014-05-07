class TopicsController < ApplicationController

  def index
    @topics = Topic.all
    @subscriptions = current_user.subscriptions
  end

end
