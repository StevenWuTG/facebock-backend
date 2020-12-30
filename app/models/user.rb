class User < ApplicationRecord
    has_many :messages
    has_many :posts
    has_many :likes, through: :posts
    
    has_many :friendships
    has_many :friends, through: :friendships, class_name: "User"
    has_many :pals
    # has_many :user2, through: :pals, class_name: "User"
    
end
