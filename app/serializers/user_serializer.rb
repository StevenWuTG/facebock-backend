class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :vaccinated, :img_url, :first_name, :last_name, :age, :hometown
end
