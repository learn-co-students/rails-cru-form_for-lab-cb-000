# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.create(name: "Song1")
Song.create(name: "Song2")
Song.create(name: "Song3")
Artist.create(name: "Tyler", bio: "I'm Here")
Artist.create(name: "Ali", bio: "Ali is here too")
Artist.create(name: "Sufyan", bio: "Sufi just got here")
Genre.create(name: "Pop")
Genre.create(name: "Folk")
Genre.create(name: "Hip-Hop")

s1 = Song.all[0]
s2 = Song.all[1]
s3 = Song.all[2]


a1 = Artist.all[0]
a2 = Artist.all[1]
a3 = Artist.all[2]


g1 = Genre.all[0]
g2 = Genre.all[1]
g3 = Genre.all[2]

s1.artist_id = a1.id

s2.artist_id = a2.id

s3.artist_id = a3.id


s1.genre_id = g1.id
s2.genre_id = g2.id
s3.genre_id = g3.id

s1.save
s2.save
s3.save
