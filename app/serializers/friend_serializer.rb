class FriendSerializer < ActiveModel::Serializer
  attributes :id, :accepted
  has_one :user
end
