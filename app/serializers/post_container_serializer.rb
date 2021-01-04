class PostContainerSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :post
end
# This is our version of the wall 