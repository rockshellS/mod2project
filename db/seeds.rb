# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Listing.destroy_all
Like.destroy_all

abbie = User.create(name: "Abbie", user_name: "thatsabbie", bio: "This is Abbie's bio!")
rachelle = User.create(name: "Rachelle", user_name: "hirachelle", bio: "This is Rachelle's bio!")
aaron = User.create(name: "Aaron", user_name: "heyaaron", bio: "This is Aaron's bio!")

listing_one = Listing.create(title: "crockpot", description: "this is a crockpot that i do not want please come pick it up ASAP", category: "kitchen", status: "claimed", owner_id: 1, recipient_id: 2)
listing_two = Listing.create(title: "crockpot", description: "this is a crockpot that i do not want please come pick it up ASAP", category: "kitchen", status: "not yet claimed", owner_id: 1, recipient_id: nil)

new_like = Like.create(liker_id: 2, listing_id:1)
new_like_two = Like.create(liker_id: 3, listing_id:2)