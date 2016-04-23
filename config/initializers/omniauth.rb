Rails.application.config.middleware.use OmniAuth::Builder do
  provider :yelp,:consumer_key => ENV['YELP_CONSUMER_KEY'],:consumer_secret => ENV['YELP_CONSUMER_SECRET'],:token => ENV['YELP_TOKEN'],:token_secret => ENV['YELP_TOKEN_SECRET']
end
