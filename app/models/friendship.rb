class Friendship < ApplicationRecord
  belongs_to :follower, class_name: "User", foreign_key: :user_id
  belongs_to :followee, class_name: "User", foreign_key: :followee_id
end
