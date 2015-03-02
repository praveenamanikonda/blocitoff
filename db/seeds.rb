# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

#Create users 
50.times do 
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end 
users = User.all


#Create lists 
50.times do 
  List.create!(
    title: Faker::Lorem.word,
    user: users.sample
    )
end 
lists = List.all


#Create items 
50.times do 
  Item.create!(
    name: Faker::Lorem.word,
    list: lists.sample
    )
end  