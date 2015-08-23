# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bob_dobbs = User.create!(
  first_name: 'Bob',
  last_name: 'Dobbs',
  email: 'yo@mama.com',
  password: 'asdfasdf'
  )

Project.create!(
  name: 'A basic project',
  description: 'a description',
  category: 'Drywall',
  user: bob_dobbs,
  video: 'https://www.youtube.com/embed/M0YfWowUrc',
  status: 'Waiting for Bid'
  )