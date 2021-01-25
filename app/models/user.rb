class User < ApplicationRecord
    has_many :listed_items, :class_name => :Listing, :foreign_key => 'owner_id'

    has_many :received_items, :class_name => :Listing, :foreign_key => 'recipient_id'

    has_many :likes, :foreign_key => 'liker_id'

   
end
