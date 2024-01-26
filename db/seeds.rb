# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
List.destroy_all if Rails.env.development?

movies_data = [
  {
    title: 'City of God',
    overview: 'In the slums of Rio, two kids paths diverge as one struggles to become a photographer and the other a kingpin.',
    poster_url: 'https://www.themoviedb.org/t/p/w1280/k7eYdWvhYQyRQoU2TB2A2Xu2TfD.jpg',
    rating: 8.4
  },
  {
    title: 'The Shawshank Redemption',
    overview: 'Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison',
    poster_url: 'https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg',
    rating: 8.7
  },
  {
    title: 'Titanic',
    overview: '101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.',
    poster_url: 'https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg',
    rating: 7.9
  },
  {
    title: 'Oceans Eight',
    overview: 'Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.',
    poster_url: 'https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg',
    rating: 7.0
  }
]

movies_data.each do |movie_data|
  Movie.create(movie_data)
end
