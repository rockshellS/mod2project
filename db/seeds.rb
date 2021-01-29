# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create(neighborhood: "Lakeview")
Location.create(neighborhood: "Avondale")
Location.create(neighborhood: "Andersonville")
Location.create(neighborhood: "Logan Square")
Location.create(neighborhood: "Ravenswood")
Location.create(neighborhood: "Streeterville")
Location.create(neighborhood: "Bucktown")
Location.create(neighborhood: "Wicker Park")
Location.create(neighborhood: "Roger's Park")
Location.create(neighborhood: "Uptown")
Location.create(neighborhood: "Edgewater")
Location.create(neighborhood: "Pilsen")
Location.create(neighborhood: "Hyde Park")
Location.create(neighborhood: "River North")
Location.create(neighborhood: "West Loop")
Location.create(neighborhood: "Lincoln Square")
Location.create(neighborhood: "Wrigleyville")



@abbie = User.create(name: "Abbie", username: "thatsabbie", contact_info: "708 425 8983, abbie.lastname@gmail.com", password: "123", password_confirmation: "123", bio: "This person is an occupation living in a neighborhood in chicago. They are interested in a topic, another topic, and an additional topic. For fun, they enjoy doing a hobby with their family and/or friends.", location_id: 2)
@abbie.image.attach(io: File.open('app/assets/images/users/abbie.png'), filename: 'abbie.png')
@rachelle = User.create(name: "Rachelle", username: "hirachelle", password: "123", password_confirmation: "123", contact_info: "708 555 5555, email@gmail.com", bio: "This person is an occupation living in a neighborhood in chicago. They are interested in a topic, another topic, and an additional topic. For fun, they enjoy doing a hobby with their family and/or friends.", location_id: 3)
@rachelle.image.attach(io: File.open('app/assets/images/users/rachelle.png'), filename: 'rachelle.png')
@aaron = User.create(name: "Aaron", username: "heyaaron", password: "123", password_confirmation: "123", bio: "This person is an occupation living in a neighborhood in chicago. They are interested in a topic, another topic, and an additional topic. For fun, they enjoy doing a hobby with their family and/or friends.", contact_info: "708 555 5555, email@gmail.com", location_id: 2)
@aaron.image.attach(io: File.open('app/assets/images/users/aaron.png'), filename: 'aaron.png')
@marc = User.create(name: "Marc", username: "marcusfarcus", password: "123", password_confirmation: "123", bio: "This person is an occupation living in a neighborhood in chicago. They are interested in a topic, another topic, and an additional topic. For fun, they enjoy doing a hobby with their family and/or friends.", contact_info: "708 555 5555, email@gmail.com", location_id: 1)
@marc.image.attach(io: File.open('app/assets/images/users/marc.png'), filename: 'marc.png')
@james = User.create(name: "James", username: "hellojames", password: "123", password_confirmation: "123", bio: "This person is an occupation living in a neighborhood in chicago. They are interested in a topic, another topic, and an additional topic. For fun, they enjoy doing a hobby with their family and/or friends.", contact_info: "708 555 5555, email@gmail.com", location_id: 1)
@james.image.attach(io: File.open('app/assets/images/users/james.png'), filename: 'james.png')
@lisa = User.create(name: "Lisa", username: "allaboutlisamarie", password: "123", password_confirmation: "123", bio: "This person is an occupation living in a neighborhood in chicago. They are interested in a topic, another topic, and an additional topic. For fun, they enjoy doing a hobby with their family and/or friends.", contact_info: "708 555 5555, email@gmail.com", location_id: 2)
@lisa.image.attach(io: File.open('app/assets/images/users/lisa.png'), filename: 'lisa.png')
@evan = User.create(name: "Evan", username: "sleepyevan", contact_info: "312 397 8983, firstname.lastname@gmail.com", password: "123", password_confirmation: "123", bio: "This person is an occupation living in a neighborhood in chicago. They are interested in a topic, another topic, and an additional topic. For fun, they enjoy doing a hobby with their family and/or friends.", location_id: 1)
@evan.image.attach(io: File.open('app/assets/images/users/evan.png'), filename: 'evan.png')
@daniel = User.create(name: "Daniel", username: "danielisfun", contact_info: "312 397 8983, firstname.lastname@gmail.com", password: "123", password_confirmation: "123", bio: "This person is an occupation living in a neighborhood in chicago. They are interested in a topic, another topic, and an additional topic. For fun, they enjoy doing a hobby with their family and/or friends.", location_id: 3)
@daniel.image.attach(io: File.open('app/assets/images/users/daniel.png'), filename: 'daniel.png')
@marty = User.create(name: "Marty", username: "hamrat", contact_info: "312 397 8983, firstname.lastname@gmail.com", password: "123", password_confirmation: "123", bio: "This person is an occupation living in a neighborhood in chicago. They are interested in a topic, another topic, and an additional topic. For fun, they enjoy doing a hobby with their family and/or friends.", location_id: 2)
@marty.image.attach(io: File.open('app/assets/images/users/marty.png'), filename: 'marty.png')



Category.create(name: "Kitchen", emoji: "🍳" )
Category.create(name: "Exercise equipment", emoji: "🏋️")
Category.create(name: "Clothing", emoji: "🧥")
Category.create(name: "Furniture", emoji: "🪑")
Category.create(name: "Toys and games", emoji: "🎲")
Category.create(name: "Electronics", emoji: "🔌")
Category.create(name: "Books", emoji: "📚")
Category.create(name: "Kids & Babies", emoji: "🧸")
Category.create(name: "Jewelry", emoji: "💎")
Category.create(name: "Tickets & Events", emoji: "🎟")
Category.create(name: "Miscellaneous", emoji: "✨")



@crockpot = Listing.create(title: "Crockpot", description: "This is a crockpot that I do not want anymore because I got new one as a gift. It works great! Pick only, please!", category_id: 1, claimed: false, owner_id: 1)
@crockpot.image.attach(io: File.open('app/assets/images/listings/crockpot.png'), filename: 'crockpot.png')
@treadmill = Listing.create(title: "Treadmill", description: "I dont use this treadmill anymore! Would love it to go to a good home.", category_id: 2, claimed: false, owner_id: 2)
@treadmill.image.attach(io: File.open('app/assets/images/listings/treadmill.png'), filename: 'treadmill.png')
@dishes = Listing.create(title: "Dishes", description: "New dish set, never used. I got this as a gift, and I dont need it.", category_id: 1, claimed: false, owner_id: 2)
@dishes.image.attach(io: File.open('app/assets/images/listings/dishes.png'), filename: 'dishes.png')
@clothes1 = Listing.create(title: "Clothes", description: "Womens clothes sizes small-medium, 6-8, lightly used", category_id: 3, claimed: false, owner_id: 2)
@clothes1.image.attach(io: File.open('app/assets/images/listings/wclothes.png'), filename: 'wclothes.png')
@clothes2 = Listing.create(title: "Clothes", description: "Clothes from a pet-free, smoke-free home. Size medium.", category_id: 3, claimed: false, owner_id: 3)
@clothes2.image.attach(io: File.open('app/assets/images/listings/wclothes.png'), filename: 'wclothes.png')
@clothes3 = Listing.create(title: "Clothes", description: "womens clothes size medium.", category_id: 3, claimed: false, owner_id: 1)
@clothes3.image.attach(io: File.open('app/assets/images/listings/wclothes.png'), filename: 'wclothes.png')


Like.create(liker_id: 2, listing_id:1)
Like.create(liker_id: 3, listing_id:1)
Like.create(liker_id: 1, listing_id:2)
Like.create(liker_id: 3, listing_id:2)
Like.create(liker_id: 4, listing_id:2)
Like.create(liker_id: 5, listing_id:3)
Like.create(liker_id: 3, listing_id:3)
Like.create(liker_id: 4, listing_id:3)
Like.create(liker_id: 1, listing_id:4)
Like.create(liker_id: 3, listing_id:4)
Like.create(liker_id: 4, listing_id:4)
Like.create(liker_id: 1, listing_id:5)
Like.create(liker_id: 2, listing_id:5)
Like.create(liker_id: 4, listing_id:5)
Like.create(liker_id: 5, listing_id:5)
Like.create(liker_id: 2, listing_id:6)
Like.create(liker_id: 3, listing_id:6)
Like.create(liker_id: 4, listing_id:6)
Like.create(liker_id: 5, listing_id:6)
Like.create(liker_id: 5, listing_id:6)


