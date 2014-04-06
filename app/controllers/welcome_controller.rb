class WelcomeController < ApplicationController
  def index
    @tags = Twitter.search("#real-deal -rt").results
  end
end
