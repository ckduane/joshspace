# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Band.destroy_all
Friend.destroy_all
Comment.destroy_all
Post.destroy_all


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
  type_of_label: "indie",
  profile_views: 101010,
  last_login: "13/13/0000",
  cover_art: "https://oldies.scdn5.secure.raxcdn.com/i/boxart/w128/85/83/886974858324.jpg?v=2"
  })

friend0 = Friend.create!({
  name: "Tom",
  image: "https://img.buzzfeed.com/buzzfeed-static/static/2015-07/24/12/enhanced/webdr06/original-3189-1437757123-3.jpg?downsize=715:*&output-format=auto&output-quality=auto",
  order: 1,
  band_id: band.id
  })

post = band.posts.create!({
  title: "Dirty Potato Chips",
  body: "We kettle cook in a premium peanut oil blend for a crunchier, tastier potato chop!"
  # band_id: band.id
  })

friend1 = Friend.create!({
  name: "Quincy",
  image: "https://s-media-cache-ak0.pinimg.com/originals/2c/52/61/2c5261d5b2abee4a9b6717f192924a0c.jpg",
  order: 2,
  band_id: band.id
})

friend2 = Friend.create!({
  name: "Abigail",
  image: "https://s-media-cache-ak0.pinimg.com/originals/5e/d7/2b/5ed72b0c59a6c43d97bd34758a656d85.jpg",
  order: 3,
  band_id: band.id
  })


friend3 = Friend.create!({
  name: "Thelma",
  image: "http://catcareclinic.net/wp-content/uploads/2016/12/cat_smell_flower.jpg",
  order: 4,
  band_id: band.id
})

friend4 = Friend.create!({
  name: "Muffin",
  image: "https://s-media-cache-ak0.pinimg.com/736x/66/8f/3b/668f3bcd5f72099e4ab8ab048ee4bf36--flower-wild-life.jpg",
  order: 5,
  band_id: band.id
})

friend5 = Friend.create!({
  name: "Bagelwich",
  image: "http://i.imgur.com/btFRjOf.png",
  order: 6,
  band_id: band.id
})

comment = band.comments.create!({
  username: "Bagelwich",
  image: "http://i.imgur.com/btFRjOf.png",
  body: "Hello. I love your band. Please eat more melons."
})

commenst = band.comments.create!({
  username: "Muffin",
  image: "https://s-media-cache-ak0.pinimg.com/736x/66/8f/3b/668f3bcd5f72099e4ab8ab048ee4bf36--flower-wild-life.jpg",
  body: "~~~*~*~*~**~*~*~**~*~*~*~*))>><<(("
})

post2 = band.posts.create!({
  title: "How to Tame a Plastic Bag",
  body: "First and foremost, this is assuming the plastic bag is wild. There is no need to tame a bag picked up from the grocery store. These are domesticated bags who have led peaceful, orderly lives."
  })

pos2t = band.posts.create!({
  title: "Enjoying your first brainfreeze",
  body: "Summertime is filled with the hot sunshine. It burns. It burns your brain."
})

show = band.shows.create!({
  date: "11/1/1/1/1",
  time: "4am",
  name: "Whisker Patrol",
  location: "San Diego, CA"
})