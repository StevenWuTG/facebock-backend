class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :vaccinated, :img_url, :first_name, :last_name, :age, :hometown

  has_many :messages
  has_many :friends
  has_many :posts
  has_many :likes, through: :posts
  
end
