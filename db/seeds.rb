# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Abbie", username: "thatsabbie", bio: "This is Abbie's bio!")
User.create(name: "Rachelle", username: "hirachelle", bio: "This is Rachelle's bio!")
User.create(name: "Aaron", username: "heyaaron", bio: "This is Aaron's bio!")
User.create(name: "Marc", username: "whatsupmarc", bio: "This is Marc's bio!")
User.create(name: "James", username: "hellojames", bio: "This is James bio!")

Category.create(name: "Kitchen")
Category.create(name: "Exercise equipment")
Category.create(name: "Clothing")
Category.create(name: "Furniture")
Category.create(name: "Toys and games")
Category.create(name: "Electronics")
Category.create(name: "Books")
Category.create(name: "Miscellaneous")


Listing.create(title: "Crockpot", description: "This is a crockpot that i do not want please come pick it up ASAP", category_id: 1, claimed: true, owner_id: 1, recipient_id: 2)
Listing.create(title: "Treadmill", description: "I dont use this treadmill anymore! Would love it to go to a good home.", category_id: 2, claimed: false, owner_id: 2)
Listing.create(title: "Dishes", description: "New dish set, never used.", category_id: 1, claimed: true, owner_id: 2, recipient_id:1)
Listing.create(title: "Clothes", description: "Womens clothes sizes small-medium, 6-8, lightly used", category_id: 3, claimed: false, owner_id: 2)
Listing.create(title: "Clothes", description: "Mens clothes size medium.", category_id: 3, claimed: true, owner_id: 3, recipient_id: 4)

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
