class TweetsController < ApplicationController
  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    redirect_to root_path
  end

  private

  def tweet_params
  end
end
