# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create(neighborhood: "Lakeview")
Location.create(neighborhood: "Logan Square")
Location.create(neighborhood: "Avondale")
Location.create(neighborhood: "Bucktown")
Location.create(neighborhood: "Wicker Park")
Location.create(neighborhood: "Ravenswood")
Location.create(neighborhood: "Streeterville")
Location.create(neighborhood: "Roger's Park")
Location.create(neighborhood: "Uptown")
Location.create(neighborhood: "Andersonville")
Location.create(neighborhood: "Edgewater")
Location.create(neighborhood: "Pilsen")
Location.create(neighborhood: "Hyde Park")
Location.create(neighborhood: "River North")
Location.create(neighborhood: "West Loop")
Location.create(neighborhood: "Lincoln Square")
Location.create(neighborhood: "Wrigleyville")



@abbie = User.create(name: "Abbie", username: "thatsabbie", contact_info: "Phone: 708 425 8983, email: abbie.lastname@gmail.com", password: "123", password_confirmation: "123", bio: "This is Abbie's bio!", location_id: 3)
@abbie.image.attach(io: File.open('assets/images'), filename: 'abbie.png')
@rachelle = User.create(name: "Rachelle", username: "hirachelle", password: "123", password_confirmation: "123", contact_info: "708 555 5555, email@gmail.com", bio: "This is Rachelle's bio!", location_id: 9)
@rachelle.image.attach(io: File.open('assets/images'), filename: 'rachelle.png')
User.create(name: "Aaron", username: "heyaaron", password: "123", password_confirmation: "123", bio: "This is Aaron's bio!", contact_info: "708 555 5555, email@gmail.com", location_id: 3)
User.create(name: "Marc", username: "whatsupmarc", password: "123", password_confirmation: "123", bio: "This is Marc's bio!", contact_info: "708 555 5555, email@gmail.com", location_id: 6)
User.create(name: "James", username: "hellojames", password: "123", password_confirmation: "123", bio: "This is James bio!", contact_info: "708 555 5555, email@gmail.com", location_id: 1)

@lisa = User.create(name: "Lisa", username: "lisaforthewin", password: "123", password_confirmation: "123", bio: "Lisa is great!", contact_info: "708 555 5555, email@gmail.com", location_id: 1)
@lisa.image.attach(io: File.open('assets/images/lisa.png'), filename: 'lisa.png')

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



Listing.create(title: "Crockpot", description: "This is a crockpot that i do not want please come pick it up ASAP", category_id: 1, claimed: false, owner_id: 1)
Listing.create(title: "Treadmill", description: "I dont use this treadmill anymore! Would love it to go to a good home.", category_id: 2, claimed: false, owner_id: 2)
Listing.create(title: "Dishes", description: "New dish set, never used.", category_id: 1, claimed: false, owner_id: 2)
Listing.create(title: "Clothes", description: "Womens clothes sizes small-medium, 6-8, lightly used", category_id: 3, claimed: false, owner_id: 2)
Listing.create(title: "Clothes", description: "Mens clothes size medium.", category_id: 3, claimed: false, owner_id: 3)
Listing.create(title: "Clothes", description: "womens clothes size medium.", category_id: 3, claimed: false, owner_id: 1)

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
