# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.destroy_all
Album.destroy_all
Artist.destroy_all

25.times do
  artist = Artist.create(name: Faker::FunnyName.unique.name,
                         alias: Faker::TvShows::GameOfThrones.unique.character)

  album_amount = rand(3..5)
  song_amount = rand(7..8)

  album_amount.times do
    artist.albums.create(name: Faker::Games::LeagueOfLegends.unique.champion,
                         units_sold: Faker::Number.number(6))
  end

  song_amount.times do
    artist.songs.create(title: Faker::Superhero.unique.descriptor,
                        description: Faker::Kpop.unique.iii_groups)
  end
end

puts "Number of Artists: #{Artist.count}"
puts "Number of Albums: #{Album.count}"
puts "Number of Songs: #{Song.count}"
