User.destroy_all

puts 'Creating users...'
users_attributes = [
  {
    name:         'Charles',
    ranking:       4,
    gender:       'Male',
    age:           33
  },
  {
    name:         'Jonathan',
    ranking:       2,
    gender:       'Male',
    age:           37
  },
  {
    name:         'Lynn',
    ranking:       5,
    gender:       'Female',
    age:           22
  },
  {
    name:         'Marie',
    ranking:       1,
    gender:       'Female',
    age:           40
  },
  {
    name:         'Louis',
    ranking:       5,
    gender:       'Male',
    age:           22
  },
  {
    name:         'Adrien',
    ranking:       5,
    gender:       'Male',
    age:           15
  }
]
User.create!(users_attributes)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
