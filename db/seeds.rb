Answer.destroy_all
User.destroy_all

puts 'Creating users...'
users = [
  {
    name:         'Charles',
    ranking:       4,
    gender:       'Male',
    age:           33,
    email: 'charles@gmail.com',
    password: 'azerty',
    address: 'cheminement Enrico Caruso, Toulouse',
    picture: "https://www.atpworldtour.com/en/news/www.atpworldtour.com/-/media/images/news/2017/08/04/21/36/federer-montreal-preview-2017.jpg"
  },
  {
    name:         'Jonathan',
    ranking:       2,
    gender:       'Male',
    age:           37,
    email: 'jonathan@gmail.com',
    password: 'azerty',
    address: '5 chemin des Ramiers, Blagnac',
    picture: "https://images.beinsports.com/sIeysGac4Hgd3PLPgcYKC4BHykU=/full-fit-in/1000x0/rafael-nadal-cropped_wmzfnt73xdyc1vrwfvhjlm29a.jpg"
  },
  {
    name:         'Lynn',
    ranking:       5,
    gender:       'Female',
    age:           22,
    email: 'lynn@gmail.com',
    password: 'azerty',
    address: '1 rue des Pins, Tournefeuille',
    picture: "https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2017/09/18/104716179-GettyImages-479674638.1910x1000.jpg"
  },
  {
    name:         'Marie',
    ranking:       1,
    gender:       'Female',
    age:           40,
    email: 'marie@gmail.com',
    password: 'azerty',
    address: 'Bonnefoy, Toulouse',
    picture: "https://media.self.com/photos/5a68bdb10628db309dc0fce1/4:3/w_728,c_limit/serena-williams-return-to-tennis-after-giving-birth.jpg"
  },
  {
    name:         'Louis',
    ranking:       5,
    gender:       'Male',
    age:           22,
    email: 'louis@gmail.com',
    password: 'azerty',
    address: 'Les Abattoirs, Toulouse',
    picture: "http://cdn1.thecomeback.com/wp-content/uploads/sites/94/2016/09/506208430.jpg"
  },
  {
    name:         'Adrien',
    ranking:       5,
    gender:       'Male',
    age:           15,
    email: 'adrien@gmail.com',
    password: 'azerty',
    address: 'Jardin des Plantes, Toulouse',
    picture: "http://www.atpworldtour.com/en/news/www.atpworldtour.com/-/media/images/news/2017/01/23/05/09/goffin-australian-open-2017-monday.jpg"
  }
]

User.create!(users)

puts 'Creating answers...'
answers = [
  {
    status: 'dislike',
    receiver: User.second,
    user: User.first
  },
  {
    status: 'like',
    receiver: User.last,
    user: User.first
  }
]



Answer.create!(answers)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
