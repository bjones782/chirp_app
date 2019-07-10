class Relationship < ApplicationRecord

    belongs_to :user
    belongs_to :follower
    # has_many :followers, :through => :relationships, :source => User
    

end
