# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employee.delete_all
Employee.create([
  {
    name: 'Samson',
    email: 'samson@example.com',
    about: ''
  },
  {
    name: 'Milk',
    email: 'milk@example.com',
    about: ''
  },
  {
    name: 'Boat',
    email: 'boat@example.com',
    about: ''
  }
])

Customer.delete_all
Customer.create([
  {
    name: 'Mike',
    email: 'mike@example.com',
    about: ''
  },
  {
    name: 'Jimmy',
    email: 'jimmy@example.com',
    about: ''
  },
  {
    name: 'Brandon',
    email: 'brandon@example.com',
    about: ''
  }
])
