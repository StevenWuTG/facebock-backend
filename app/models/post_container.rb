class PostContainer < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
# This is our version of the wall 