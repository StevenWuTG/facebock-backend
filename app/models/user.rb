class User < ApplicationRecord
    has_many :messages
    has_many :friends
    has_many :posts
    has_many :likes, through: :posts
    
end
