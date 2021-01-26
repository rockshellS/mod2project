class Like < ApplicationRecord
    belongs_to :listing

    belongs_to :liker, :class_name => :User

end
