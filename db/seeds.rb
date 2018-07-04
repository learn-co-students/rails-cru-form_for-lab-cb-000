# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.destroy_all

Genre.destroy_all

Song.destroy_all

ARTISTS = [
  {
    name: "Rihanna",
    bio: "Barbados born singer."
  },
  {
    name: "Cardi-B",
    bio: "Stripper turned rapper."
  },
  {
    name: "Beyonce",
    bio: "Previously in girls group, 'Destinys Child'."
  },
  {
    name: "Kendrick Lamar",
    bio: "Compton, California native."
  },
  {
    name: "Drake",
    bio: "Canadian rapper of African-American and Jewish decent."
  },
  {
    name: "Saweetie",
    bio: "Sacramento, California Native"
  },
  {
    name: "Kehlani",
    bio: "Oakland, California native."
  }
]

GENRES = ['R&B', 'Rap']


SONGS = ["Needed Me", "Money Bag", "Sorry", "HUMBLE.", "Don't Matter to Me", "ICY GRL", "How That Taste"]


def seed_artists_genres_songs(artists_hash, genres_arr, songs_arr)

  r_b = Genre.create!(name: genres_arr[0])
  rap = Genre.create!(name: genres_arr[1])

  songs_arr.each_with_index do |song_name, i|
    song = Song.create!(:name => song_name)

    artist = Artist.create!(artists_hash[i])
    artist.songs << song

    genre = i % 2 == 0 ? r_b : rap
    genre.songs << song
  end

  p "Created #{Artist.count} Artists, #{Genre.count} Genres, and #{Song.count} Songs"
end

seed_artists_genres_songs(ARTISTS, GENRES, SONGS)

def songs_to_s
  Song.all.map do |song|
    "#{song.name} by #{song.artist.name} - Genre: #{song.genre.name}"
  end
end
