require 'twitter'

# Config
@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["CONSUMER_KEY"]
  config.consumer_secret     = ENV["CONSUMER_SECRET"]
  config.access_token        = ENV["CONSUMER_TOKEN"]
  config.access_token_secret = ENV["CONSUMER_TOKEN_SECRET"]
end

# PRODUCTION ENVIRONMENT -----------------------------------
# Retweet transaction (Home Timeline)
@client.list_timeline("ichikosai", "list").each do |tweet|
    if tweet.user.screen_name != "ichikosai" && !tweet.retweeted? && !tweet.full_text.include?("匿名質問") # Avoidance of a specified word
        @client.retweet(tweet.id)
    end
end
