User.destroy_all

puts 'Creating users...'
users = [
  {
    name:         'Charles',
    ranking:       4,
    gender:       'male',
    age:           28,
    email: 'charles@gmail.com',
    password: 'azerty',
    address: "10 avenue d'Eysines, Bordeaux",
    picture: "https://www.atpworldtour.com/en/news/www.atpworldtour.com/-/media/images/news/2017/08/04/21/36/federer-montreal-preview-2017.jpg",
    hand: "Right Handed",
    club: "Tennis Club de Bordeaux",
    description: "I've been playing tennis for almost 10+ years, mostly on a non-competitive level. Looking to meet and play with fellow tennis enthusiasts!"
  },
  {
    name:         'Jonathan',
    ranking:       2,
    gender:       'male',
    age:           32,
    email: 'jonathan@gmail.com',
    password: 'azerty',
    address: '25 rue Brizard, Bordeaux',
    picture: "https://images.beinsports.com/sIeysGac4Hgd3PLPgcYKC4BHykU=/full-fit-in/1000x0/rafael-nadal-cropped_wmzfnt73xdyc1vrwfvhjlm29a.jpg",
    hand: "Right Handed",
    club: "TC Brizard",
    description: "Played tennis all through childhood competitively. Have played very little as an adult but would like to get back into it!"
  },
  {
    name:         'Lynn',
    ranking:       3,
    gender:       'female',
    age:           22,
    email: 'lynn@gmail.com',
    password: 'azerty',
    address: '22 rue Boyer, Bordeaux',
    picture: "https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2017/09/18/104716179-GettyImages-479674638.1910x1000.jpg",
    hand: "Right Handed",
    club: "Don Bosco TC",
    description: "Excited to get back to court. - Good at rallies and court coverage - Service needs to be worked upon a lot :)."
  },
  {
    name:         'Marie',
    ranking:       2,
    gender:       'female',
    age:           35,
    email: 'marie@gmail.com',
    password: 'azerty',
    address: '17 rue Berruer, Bordeaux',
    picture: "https://media.self.com/photos/5a68bdb10628db309dc0fce1/4:3/w_728,c_limit/serena-williams-return-to-tennis-after-giving-birth.jpg",
    hand: "Right Handed",
    club: "Bordeaux Tennis",
    description: "Started playing tennis about a month ago. I think I'm getting a hang of it and am looking for people to practice and also be competitive. I can play after 7pm on weekdays and any time on weekends."
  },
  {
    name:         'Louis',
    ranking:       4,
    gender:       'male',
    age:           26,
    email: 'louis@gmail.com',
    password: 'azerty',
    address: '1 Rue du Tondu, Bordeaux',
    picture: "http://cdn1.thecomeback.com/wp-content/uploads/sites/94/2016/09/506208430.jpg",
    hand: "Right Handed",
    club: "Tennis Club Bègles",
    description: "I am looking to start competing again. I competed 7 years straight and had to give up to focus on studies and work. Absolutely would love playing anytime."
  }
]

users.each do |user|
  new_user =  User.new(user)
  new_user.remote_picture_url = user[:picture]
  new_user.save
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
