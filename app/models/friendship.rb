class Friendship < ApplicationRecord
  belongs_to :user
  # belongs_to :friend, source: :user
  belongs_to :friend, class_name: "User"
end
