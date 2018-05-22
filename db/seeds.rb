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
    password: 'azerty'
  },
  {
    name:         'Jonathan',
    ranking:       2,
    gender:       'Male',
    age:           37,
    email: 'jonathan@gmail.com',
    password: 'azerty'
  },
  {
    name:         'Lynn',
    ranking:       5,
    gender:       'Female',
    age:           22,
    email: 'lynn@gmail.com',
    password: 'azerty'
  },
  {
    name:         'Marie',
    ranking:       1,
    gender:       'Female',
    age:           40,
    email: 'marie@gmail.com',
    password: 'azerty'
  },
  {
    name:         'Louis',
    ranking:       5,
    gender:       'Male',
    age:           22,
    email: 'louis@gmail.com',
    password: 'azerty'
  },
  {
    name:         'Adrien',
    ranking:       5,
    gender:       'Male',
    age:           15,
    email: 'adrien@gmail.com',
    password: 'azerty'
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
