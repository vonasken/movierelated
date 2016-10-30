require "sinatra"
require 'sinatra/reloader'
require 'instagram'
require 'twitter'
require 'google_maps_service'
require_relative("lib/search.rb")


client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "oLYZempVYEhPEY6ZES4ZWx1QG"
  config.consumer_secret     = "xUGhirUMEuYYyi0t324vY7VpqZn51Zm52z222oX62pDR6uEsCf"
  config.access_token        = "72079931-g9HegOGbz7XPSHGDMqnLDYGVRoxuiZHjKJhUp1X80"
  config.access_token_secret = "bvyv2Y04HYCWTIFjOYe6qUqN9VAYw192QFv7rmdwamLwp"
end

display_tweets = Search.new("User")  

get "/" do 

	# @tweets = display_tweets.tweets

	erb(:appy)
	end


get "/search" do 
	erb(:search)
	end

post "/input_search" do 


erb(:results)


end
