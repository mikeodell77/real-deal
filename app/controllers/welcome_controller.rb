class WelcomeController < ApplicationController
  before_action :authenticate_user!
  before_action :route_by_user_type

  def index
    @companies = Company.all.to_a
  end

  def tweets
    # @tags = Tweets.client.search("#real-deal -rt")
    @tags = Tweets.client.search("#realDealTriangle -rt")
    render layout: false
  end
end
