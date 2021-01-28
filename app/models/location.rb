class Location < ApplicationRecord
    has_many :users
    has_many :listings, through: :users
    validates_uniqueness_of :neighborhood
end
