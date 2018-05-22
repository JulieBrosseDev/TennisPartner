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
  }
  {
    name:         'Lynn',
    ranking:       5,
    gender:       'Female',
    age:           22
  }
]
User.create!(users_attributes)

puts 'Creating users...'
users_attributes = [
  {
    name:         'Charles',
    ranking:      4,
    gender:       'Male',
    age:           33
  },
  {
    name:         'Jonathan',
    ranking:       2,
    gender:       'Male',
    age:           37
  }
  {
    name:         'Lynn',
    ranking:       5,
    gender:       'Female',
    age:           22
  }
]
User.create!(users_attributes)
