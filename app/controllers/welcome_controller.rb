class WelcomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @tags = Twitter.search("#real-deal -rt").results
  end
end
