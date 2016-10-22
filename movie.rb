movies = ["Korean Old Boy","The Raid Redemption","DREDD","Ride Along","HARDCORE Henry","Tropic Thunder"]

def choose_movie(arr)
	arr[rand(arr.length)]
end

puts choose_movie(movies)