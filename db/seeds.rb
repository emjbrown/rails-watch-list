# require "json"
# require "rest-client"

# # TODO: Write a seed to insert 50 posts in the database fetched from the Hacker News API.
# # Get data from API
# url = "https://tmdb.lewagon.com/movie/top_rated"
# movies_serialized = RestClient.get(url)
# movies = JSON.parse(movies_serialized)
# movies = movies.first(50)



# movies.each do |movie|
#   url = "https://hacker-news.firebaseio.com/v0/item/#{post}.json"
#   post_serialized = RestClient.get(url)
#   post = JSON.parse(post_serialized)
#   title = post["title"]
#   url = post["url"]
#   Post.create(title: title, url: url)
# end

puts "Cleaning db..."
Movie.destroy_all

puts "Creating 10 movies..."
10.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Company.bs,
    poster_url: "https://loremflickr.com/320/240",
    rating: rand(0..10)
  )
  puts "Creating movie with id #{movie.id}"
end

puts "Done!"
