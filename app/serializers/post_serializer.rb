class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :img_url
  has_one :user
end
