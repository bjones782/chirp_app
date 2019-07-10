class User < ApplicationRecord

    has_many :chirps
    # has_many :squwaked_chirps, through: :squwaks, source: :chirp
    has_many :squwaks, dependent: :destroy
    # has_many :followers, :class_name => “Relationship”, :foreign_key => “user_id”
    # has_many :following, :class_name => “Relationship”, :foreign_key => “follower_id”
    has_many :relationships, class_name: "User" 
    has_many :followers, :through => :relationships

    has_secure_password

    # validates :username, presence: true
    # validates :username, uniqueness: true
    # validates :password, presence: true, length: {minimum: 8}
end
