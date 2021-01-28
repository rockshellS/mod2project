class Location < ApplicationRecord
    has_many :users
    has_many :listed_items, :class_name => :Listing, through: :users
    validates_uniqueness_of :neighborhood
end
