class TweetsController < ApplicationController
  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    render template: 'images/new', locals: { tweet: @tweet }
  end

  private

  def tweet_params
    params.permit(:content)
  end
end
