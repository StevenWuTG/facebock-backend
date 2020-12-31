class User < ApplicationRecord
    has_secure_password

    has_many :messages
    has_many :posts
    has_many :likes, through: :posts
    
    has_many :friendships
    has_many :friends, through: :friendships, class_name: "User"

    validates :username, uniqueness: true



    # friendship V2 test-start
    has_many :pals
    # has_many :user2, through: :pals, class_name: "User"
    
    # friendship V2 test-end


end
