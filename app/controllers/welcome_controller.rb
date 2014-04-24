class WelcomeController < ApplicationController
  # before_action :authenticate_user!
  before_action :route_by_user_type

  def index
    @companies = Company.all.to_a
    @stream_url = params[:stream_url]
    @funding = Funding.new
  end

  def tweets
    # @tags = Tweets.client.search("#real-deal -rt")
    @tags = Tweets.client.search("#realDealTriangle -rt")
    render layout: false
  end

  def scorecards
    # @tags = Tweets.client.search("#real-deal -rt")
    @companies = Company.all.to_a
    render layout: false
  end

end
