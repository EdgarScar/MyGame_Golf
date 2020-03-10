# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Category.destroy_all
SubCategory.destroy_all
Course.destroy_all

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

course_1 = Course.create(holes: true, length: "5487m", description: "The McLeod Country Golf Club (ABN: 96 009 773 273) was established in 1968 and operates as a Not-For-Profit organisation, with all golfing and social facilities open to Club Members and the general public. The McLeod Country Golf Club is located at the foothills of Mt Ommaney, and is approximately 15 mins drive south west of Brisbane city center. McLeod offers a quality golf experience with 500,000m2 of undulating greens, fairways and natural parkland vistas.", difficulty: 1, priceeighteen: 45, pricenine: 25, phone: 33763666, name: "McLeod Country Golf Club")
course_2 = Course.create(holes: true, length: "6747m", description: "With three 18-hole, par-72 combination layouts including a Championship course that hosts the Australian PGA Championship, a visit to Royal Pines guarantees a memorable round of golf for both serious and casual golfers. Situated just a short drive from Surfers Paradise and embracing the natural formation of the land, the course boasts superbly manicured greens, scenic lakes, deep bunkers and an idyllic backdrop of the mountains.", difficulty: 2, priceeighteen: 125, pricenine: 85, phone: 55978744, name: "Royal Pines Resort")
course_3 = Course.create(holes: false, length: "1688m", description: "Come and play our 9 hole golf course designed with new golfers and the family in mind. We have five par 3's and four par four's. The par 3's range from 90 metres to 170 metres and the par four's range from 216 metres to 307 metres which means you can get around the course in 2 hours or less. Enjoy our relaxed atmosphere for a friendly social round of golf.  No stuffy club rules - No formal dress code. Bookings are essential for weekend & public holiday play to secure a tee time. We are fully licensed, so enjoy a round of golf with your friends or colleagues followed by a nice cold drink in our courtyard.", difficulty: 0, priceeighteen: 22, pricenine: 17, phone: 33797836, name: "Corinda Golf Course and Pitch 'n' Putt")
course_4 = Course.create(holes: false, length: "2100m", description: "The Jindalee Golf Club is located in the western suburbs of Brisbane. It is only 15 km from the city centre and is beside the Centenary Highway less than 1 km after crossing the Brisbane River. The club has a nine hole course that is a challenge for all levels of golfer. Social players are most welcome, however, it is suggested that you ring the pro shop to book a tee time if you are looking for a game. We have a large social membership and the club house is the meeting place for many of the locals. Bona fide visitors and guests are always welcome.", difficulty: 1, priceeighteen: 22, pricenine: 15, phone: 33793073, name: "Jindalee Golf Club")
course_5 = Course.create(holes: true, length: "6469m", description: "The Brookwater golf course layout is all thanks to Greg Norman’s inspired design, with each hole a perfect mix of challenge and playability. Thanks to recent renovations restoring the course to its original design, the Brookwater golf course holes are now even better than ever. Brookwater’s redesigned golf course, with improved playability and sustainability, is without a doubt Queensland’s finest golf experience. The spectacular 18-hole, par 72 championship golf course layout roams its way through naturally undulating Australian bushland, with signature bunkering and beautiful inclusion of natural waterways.", difficulty: 2, priceeighteen: 120, pricenine: 69, phone: 38145500, name: "Brookwater Golf Course and Country Club")
