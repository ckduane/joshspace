# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Band.destroy_all
Friend.destroy_all

band = Band.create!({
  name: "Dawsons Screamo",
  photo: "https://upload.wikimedia.org/wikipedia/en/1/1d/JoeyPotter.jpg",
  genre: "Sounds of Music",
  location: "San Diego, CA",
  email: "hello@email.com",
  member_since: "09/37/2930",
  influences: "bacteria and phytoplankton",
  sounds_like: "peeing for a really long time after d=having too hamye drinks",
  record_label: "Circle K",
  type_of_label: "indie"
  })

friends = Friend.create!({
  name: "Tom",
  image: "https://img.buzzfeed.com/buzzfeed-static/static/2015-07/24/12/enhanced/webdr06/original-3189-1437757123-3.jpg?downsize=715:*&output-format=auto&output-quality=auto",
  order: 1,
  band_id: 1
  })