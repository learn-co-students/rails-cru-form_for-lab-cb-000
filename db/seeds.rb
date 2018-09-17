# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artists = [
  {name: "Adele",
  bio: "present"},
  {name: "Bellas",
  bio: "present"}
]
artists.each do |artist|
  Artist.create(artist)
end

Genre.create({name: "pop"})

songs = [
  {name: "Hello",
  artist_id: 1,
 genre_id: 1},
 {name: "Rolling in the Deep",
 artist_id: 1,
genre_id: 1},
{name: "Flashlight",
artist_id: 2,
genre_id: 1}
 ]

 songs.each do |song|
   Song.create(song)
 end
