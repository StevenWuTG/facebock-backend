class PalSerializer < ActiveModel::Serializer
  attributes :id, :user1, :user2
  has_one :user1
  has_one :user2
end
