class WelcomeController < ApplicationController
  def index
  end
  def tweets
    @tags = Tweets.client.search("#real-deal -rt")
    render layout: false
  end
end
