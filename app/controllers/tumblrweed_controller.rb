class TumblrweedController < ApplicationController

  def index
  end


  def show
    @key = Tumblrweed::REST::Client.new Rails.application.secret.tumblr_keys,
      Rails.application.secret.consumer_key
    @secret = Tumblrweed::REST::Client.new Rails.application.secret.tumblr_keys,
      Rails.application.secret.consumer_secret
    @oauth_token = Tumblrweed::REST::Client.new Rails.application.secret.tumblr_keys,
      Rails.application.secret.oauth_token
    @oauth_token_secret = Tumblrweed::REST::Client.new Rails.application.secret.tumblr_keys,
      Rails.application.secret.oauth_token_secret

    @my_client = Tumblr::Client.new(
      consumer_key: @key,
      consumer_secret: @secret,
      oauth_token: @oauth_token,
      oauth_token_secret: @oauth_token_secret
    )

    # @my_client.posts(@input)
  end

end
