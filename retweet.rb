require 'twitter'

# Config
@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["CONSUMER_KEY"]
  config.consumer_secret     = ENV["CONSUMER_SECRET"]
  config.access_token        = ENV["CONSUMER_TOKEN"]
  config.access_token_secret = ENV["CONSUMER_TOKEN_SECRET"]
end

# PRODUCTION ENVIRONMENT -----------------------------------
# Retweet transaction
@client.home_timeline.each do |tweet|
    if tweet.user.screen_name != "ichikosai"
        @client.retweet(tweet.id)
    end
end

# TEST ENVIRONMENT -----------------------------------------
# Tweet constantly
# @client.update("I'm tweeting with @gem!")
