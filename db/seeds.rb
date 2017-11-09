# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artists = Artist.create([{name: 'Taylor Swift'}, {name: 'Madonnna'}, {name: 'Jax'}])

genres = Genre.create([{name: 'pop'}, {name: 'rock'}, {name: 'r&b'}])

songs = Song.create([{name: 'B&WQ'}, {name: '1989'}, {name: 'Welcome to NY'}])
