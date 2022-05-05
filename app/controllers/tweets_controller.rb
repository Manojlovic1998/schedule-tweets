class TweetsController < ApplicationController
  before_action :is_logged_in?
  
  def index
    @tweets = Current.user.tweets
  end

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end
end