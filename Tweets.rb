require('twitter')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "oLYZempVYEhPEY6ZES4ZWx1QG"
  config.consumer_secret     = "xUGhirUMEuYYyi0t324vY7VpqZn51Zm52z222oX62pDR6uEsCf"
  config.access_token        = "72079931-g9HegOGbz7XPSHGDMqnLDYGVRoxuiZHjKJhUp1X80"
  config.access_token_secret = "bvyv2Y04HYCWTIFjOYe6qUqN9VAYw192QFv7rmdwamLwp"
end




client.search("to:enews  ", result_type: "mixed", include_email: true, skip_status: true).take(100).collect do |tweet|
 puts "#{tweet.user.screen_name}: #{tweet.text}"

end
"_______________________________________________________"

puts client.user("enews")
# 25.7617° N, 80.1918° W
 