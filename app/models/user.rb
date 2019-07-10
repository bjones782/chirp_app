class User < ApplicationRecord

    has_many :chirps
    # has_many :followers, :class_name => “Relationship”, :foreign_key => “user_id”
    # has_many :following, :class_name => “Relationship”, :foreign_key => “follower_id”

    has_secure_password

    # validates :username, presence: true
    # validates :username, uniqueness: true
    # validates :password, presence: true, length: {minimum: 8}
end
