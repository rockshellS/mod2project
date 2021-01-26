class Like < ApplicationRecord
    belongs_to :listing
    belongs_to :liker, :class_name => :User

    validates_uniqueness_of :liker_id, scope: :listing_id, message: "already liked this item!"

end
