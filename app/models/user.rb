class User < ApplicationRecord
    has_many :listings, :foreign_key => 'owner_id'

    has_many :listings, :foreign_key => 'recipient_id'

    has_many :likes, :foreign_key => 'liker_id'

    
end
