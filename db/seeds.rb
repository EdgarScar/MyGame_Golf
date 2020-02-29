# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
SubCategory.destroy_all

bag = Category.create({name: 'Bags'})
accessory = SubCategory.create({name: 'Accessory', category: bag})
cart = SubCategory.create({name: 'Cart', category: bag})
stand = SubCategory.create({name: 'Stand', category: bag})
travel = SubCategory.create({name: 'Travel', category: bag})

club = Category.create({name: 'Clubs'})
driver = SubCategory.create({name: 'Drivers', category: club})
fairway = SubCategory.create({name: 'Fairways', category: club})
hybrid = SubCategory.create({name: 'Hybrids', category: club})
iron = SubCategory.create({name: 'Irons', category: club})
putter = SubCategory.create({name: 'Putters', category: club})
wedge = SubCategory.create({name: 'Wedges', category: club})

equipment = Category.create({name: 'Equipment'})
ball = SubCategory.create({name: 'Balls', category: equipment})
tee = SubCategory.create({name: 'Tees', category: equipment})
buggie = SubCategory.create({name: 'Buggies', category: equipment}) 

clothing = Category.create({name: 'Clothing'})
glove = SubCategory.create({name: 'Gloves', category: clothing})
hat = SubCategory.create({name: 'Hats', category: equipment})
shoe = SubCategory.create({name: 'Shoes', category: equipment})
