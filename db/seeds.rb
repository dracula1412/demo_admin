# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(email: 'hung.khucmanh@mitrais.com', password: '12345678', password_confirmation: '12345678')
chip1 = Product.create(name: "Chip #1", description: "tomato", price: 30, quantity: 30)
chip2 = Product.create(name: "Chip #2", description: "potato", price: 30, quantity: 20)
chip3 = Product.create(name: "Chip #3", description: "carot", price: 30, quantity: 0)
Order.create(user: user, product: chip1, quantity: 10) 
Order.create(user: user, product: chip1, quantity: 20) 
Order.create(user: user, product: chip2, quantity: 30) 
Order.create(user: user, product: chip3, quantity: 20) 
Order.create(user: user, product: chip3, quantity: 10) 
