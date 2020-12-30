class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :vaccinated, :img_url, :first_name, :last_name, :age, :hometown

  has_many :messages
  has_many :posts
  has_many :friendships
  has_many :friends
  # has_many :pals
  # has_many :user2
  has_many :likes, through: :posts
  
end
