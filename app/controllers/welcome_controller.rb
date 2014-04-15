class WelcomeController < ApplicationController
  before_action :authenticate_user!
  before_action :route_by_user_type

  def index
  end
  def tweets
    @tags = Tweets.client.search("#real-deal -rt")
    render layout: false
  end
end
