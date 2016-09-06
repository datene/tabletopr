# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


game = Game.new(
  name: "Test#{rand(1..100)}",
  description: "Test#{rand(1..100)}"
  )

creator = User.create(
  first_name: "Bob",
  last_name: "De Bouwer",
  email: "bob@bouwer.com",
  password: "123456789",
  facebook_picture_url: "https://unsplash.it/200/200"
  )

gm = User.create(
  first_name: "Legolas",
  last_name: "Gimli",
  email: "legoli@blobmail.com",
  password: "123456789",
  facebook_picture_url: "https://unsplash.it/100/100"
  )

game.creator = creator
game.gm = gm

5.times do
  unsplash = rand(400..500)
  user = User.new(
    first_name: "Bob#{rand(1..100)}",
    last_name: "Blokhut#{rand(100..200)}",
    email: "wobbelwob#{rand(1..200)}@gmail#{rand(1..200)}.com",
    password: "123456789",
    facebook_picture_url: "https://unsplash.it/#{unsplash}/#{unsplash}"
    )
  PlayingSession.create!(
    game: game,
    user: user
    )
  user.save!
end
game.save!