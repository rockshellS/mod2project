Welcome to BuyNothing Chicago!

 BuyNothing was created by three softeware engineering students while attending Flatiron and was the final project focusing on Rails Active Record in Mod 2. This app joins people and their communities buy giving away unwanted items. While on this site you will be able to use all the CRUD opperations.

 ************************************************************************

 Models 

  ** USER **
  Belongs to a location
  Has many listings (as an owner)
  Has many listings (as a recipient)
  Has many likes/wants (as a liker?)
  Has Many categories
  Has image
  Has secure password
  Validattions
   - user name is uniq
   - username name is presence
   - name is presence
   - contact info 
   
  ** Listing **
  Belongs to a user aliased as owner 
  Belongs to a user aliased as recipient
  Has many likes/wants 
  Has many users as likers through likes/wants
  Ends up being a many to many with users on both ends

  ** Like **
  Belongs to a listing
  Belongs to a liker as User
  Validations
   - has a unig liker_id and listing_id

  ** Location **
  Has many users
  Has many listed items through user
  Location is unig

  ** Categoty **
  Has many Listings

**************************************************************************************

Instructions

1. This app requires Ruby 2.6.1 
2. Fork and clone this repo 
3. Don't forget to bundle install and bundle update if needed.
4. Run rails db:migrate
5. Run db:seed
6. Run rails s to open BuyNothing
7. Create a new profile and either add an item or choose an item.




Contributors
Arron Dougher, Abbie Coghlan  & Rachelle Spicer

This isn't a real world working site. All items arn't up for grabs. Feel free to add and like items.