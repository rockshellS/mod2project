class User < ApplicationRecord
    has_many :listed_items, :class_name => :Listing, :foreign_key => 'owner_id'
    has_many :received_items, :class_name => :Listing, :foreign_key => 'recipient_id'
    has_many :likes, :foreign_key => 'liker_id'

    belongs_to :location

    validates :username, uniqueness: true
    validates :username, presence: true
    validates :name, presence: true
    validates_presence_of :contact_info, message: "is required for users to contact you in order to coordinate exchanging items."

    has_secure_password
   
end
