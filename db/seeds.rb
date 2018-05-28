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
    address: "10 avenue d'Eysines, Bordeaux",
    picture: "https://www.atpworldtour.com/en/news/www.atpworldtour.com/-/media/images/news/2017/08/04/21/36/federer-montreal-preview-2017.jpg",
    hand: "right",
    club: "Tennis Club de Bordeaux"
  },
  {
    name:         'Jonathan',
    ranking:       2,
    gender:       'Male',
    age:           37,
    email: 'jonathan@gmail.com',
    password: 'azerty',
    address: '25 rue Brizard, Bordeaux',
    picture: "https://images.beinsports.com/sIeysGac4Hgd3PLPgcYKC4BHykU=/full-fit-in/1000x0/rafael-nadal-cropped_wmzfnt73xdyc1vrwfvhjlm29a.jpg",
    hand: "right",
    club: "Tennis Club de Bordeaux"
  },
  {
    name:         'Lynn',
    ranking:       5,
    gender:       'Female',
    age:           22,
    email: 'lynn@gmail.com',
    password: 'azerty',
    address: '22 rue Boyer, Bordeaux',
    picture: "https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2017/09/18/104716179-GettyImages-479674638.1910x1000.jpg",
    hand: "right",
    club: "Tennis Club de Bordeaux"
  },
  {
    name:         'Marie',
    ranking:       1,
    gender:       'Female',
    age:           40,
    email: 'marie@gmail.com',
    password: 'azerty',
    address: '17 rue Berruer, Bordeaux',
    picture: "https://media.self.com/photos/5a68bdb10628db309dc0fce1/4:3/w_728,c_limit/serena-williams-return-to-tennis-after-giving-birth.jpg",
    hand: "right",
    club: "Tennis Club de Bordeaux"
  },
  {
    name:         'Louis',
    ranking:       5,
    gender:       'Male',
    age:           22,
    email: 'louis@gmail.com',
    password: 'azerty',
    address: 'Rue du Tondu, Bordeaux',
    picture: "http://cdn1.thecomeback.com/wp-content/uploads/sites/94/2016/09/506208430.jpg",
    hand: "right",
    club: "Tennis Club de Bordeaux"
  },
  {
    name:         'Adrien',
    ranking:       5,
    gender:       'Male',
    age:           15,
    email: 'adrien@gmail.com',
    password: 'azerty',
    address: '1 rue Neuve, Bordeaux',
    picture: "http://www.atpworldtour.com/en/news/www.atpworldtour.com/-/media/images/news/2017/01/23/05/09/goffin-australian-open-2017-monday.jpg",
    hand: "right",
    club: "Villa Primorose Bordeaux"
  },
    {
    name:         'Hugo',
    ranking:       3,
    gender:       'Male',
    age:           29,
    email: 'hugo@gmail.com',
    password: 'azerty',
    address: '17 rue Berruer, Bordeaux',
    picture: "http://cdn-img.instyle.com/sites/default/files/styles/684xflex/public/1463597894/051816-tennis-players-update-4.jpg?itok=XVj3bhvX",
    hand: "right",
    club: "Villa Primorose Bordeaux"
  },
    {
    name:         'Mathieu',
    ranking:       5,
    gender:       'Male',
    age:           33,
    email: 'mathieu@gmail.com',
    password: 'azerty',
    address: '2 rue Latour, Bordeaux',
    picture: "http://www.tennisworldusa.org/imgb/52987/what-kind-of-stan-wawrinka-can-we-expect-to-see-when-he-returns.jpg",
    hand: "right",
    club: "Villa Primorose Bordeaux"
  },
    {
    name:         'Julie',
    ranking:       4,
    gender:       'Female',
    age:           26,
    email: 'julie@gmail.com',
    password: 'azerty',
    address: '11 rue Judaique, Bordeaux',
    picture: "https://medias.lequipe.fr/img-photo-jpg/indian-wells-ca-march-14-kristina-mladenovic-of-france-celebrates-a-game-in-her-match-against-la/1500000000796097/86:70,1630:1098-624-416-75/b26f1.jpg",
    hand: "right",
    club: "Villa Primorose Bordeaux"
  },
    {
    name:         'Margot',
    ranking:       2,
    gender:       'Female',
    age:           30,
    email: 'margot@gmail.com',
    password: 'azerty',
    address: '22 cours Portal, Bordeaux',
    picture: "https://files.newsnetz.ch/story/1/6/5/16521815/7/topelement.jpg",
    hand: "right",
    club: "Villa Primorose Bordeaux"
  },
    {
    name:         'Paul',
    ranking:       3,
    gender:       'Male',
    age:           40,
    email: 'paul@gmail.com',
    password: 'azerty',
    address: '30 rue Poyenne, Bordeaux',
    picture: "http://s1.lprs1.fr/images/2017/06/03/7013727_000-p81au_1000x625.jpg",
    hand: "right",
    club: "Athletic Club Municipal Tennis"
  },
  {
    name:         'Valentine',
    ranking:       2,
    gender:       'Female',
    age:           24,
    email: 'valentine@gmail.com',
    password: 'azerty',
    address: '11 rue Vauban, Bordeaux',
    picture: "http://www.wtatennis.com/sites/default/files/styles/highlight_news_mobile_1_33_1_2x/public/field/image/gettyimages-812664396.jpg",
    hand: "right",
    club: "Athletic Club Municipal Tennis"
  },
    {
    name:         'Léa',
    ranking:       3,
    gender:       'Female',
    age:           29,
    email: 'lea@gmail.com',
    password: 'azerty',
    address: '17 rue Marceau, Bordeaux',
    picture: "https://www.telegraph.co.uk/content/dam/tennis/2018/01/27/TELEMMGLPICT000152540274_trans_NvBQzQNjv4BqtA9hvt4yaDuJhaJG2frTId3-Eu0rObiqj2PaX4NGgi0.jpeg?imwidth=480",
    hand: "right",
    club: "Athletic Club Municipal Tennis"
  },
    {
    name:         'Paul',
    ranking:       3,
    gender:       'Male',
    age:           27,
    email: 'paul@gmail.com',
    password: 'azerty',
    address: '6 rue Paulin, Bordeaux',
    picture: "http://www.tennisviewmag.com/sites/default/files/Alexander%2BZverev%2BMutua%2BMadrid%2BOpen%2BDay%2BFour%2B7rSWuxmreA4x.jpg",
    hand: "right",
    club: "Athletic Club Municipal Tennis"
  },
    {
    name:         'Jean',
    ranking:       4,
    gender:       'Male',
    age:           41,
    email: 'jean@gmail.com',
    password: 'azerty',
    address: '3 rue Hoche, Bordeaux',
    picture: "http://images.indianexpress.com/2017/06/monfils-m.jpg",
    hand: "right",
    club: "Athletic Club Municipal Tennis"
  }
]

users.each do |user|
  new_user =  User.new(user)
  new_user.remote_picture_url = user[:picture]
  new_user.save
end

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
