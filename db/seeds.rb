# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.destroy_all
Offset.destroy_all

#User.create!(email: 'beaugaines@yahoo.com', password: 'password', password_confirmation: 'password')

Offset.create!(name: 'Hamburger', price: '50', description: 'The typical hamburger has a carbon footprint of 3 lbs of carbon dioxide.')
Offset.create!(name: 'Steak', price: '100', description: 'The typical hamburger has a carbon footprint of 5 lbs of carbon dioxide.')