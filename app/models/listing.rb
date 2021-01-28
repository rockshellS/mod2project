class Listing < ApplicationRecord
    belongs_to :owner, :class_name => :User

    belongs_to :recipient, :class_name => :User, optional:true

    has_many :likes

    has_many :likers, :class_name => :User, through: :likes

    belongs_to :category

    has_one_attached :image




end
