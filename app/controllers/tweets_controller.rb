class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end

  def index
    @tweets = Tweet.all
  end

  def show
  end

  def create
    @tweet = Tweet.find(params[:id])
  end
end
