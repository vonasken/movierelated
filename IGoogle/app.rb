require "sinatra"
require 'sinatra/reloader'
require 'instagram'
require 'twitter'
require 'google_maps_service'


client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "oLYZempVYEhPEY6ZES4ZWx1QG"
  config.consumer_secret     = "xUGhirUMEuYYyi0t324vY7VpqZn51Zm52z222oX62pDR6uEsCf"
  config.access_token        = "72079931-g9HegOGbz7XPSHGDMqnLDYGVRoxuiZHjKJhUp1X80"
  config.access_token_secret = "bvyv2Y04HYCWTIFjOYe6qUqN9VAYw192QFv7rmdwamLwp"
end

get "/" do 
	erb(:appy)
	end


get "/search" do 
	erb(:search)
	end

post "/input_search" do 

	client.search("##{params[:search]} -rt").take(10).collect do |tweet|
 puts "#{tweet.user.screen_name}: #{tweet.text}"

end

end
