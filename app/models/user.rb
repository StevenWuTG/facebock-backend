class User < ApplicationRecord
    has_many :messages
    has_many :posts
    has_many :likes, through: :posts
    
    has_many :friendships
    # has_many :friends, through: :friendships, source: :user
    has_many :friends, through: :friendships, class_name: "User"
end
