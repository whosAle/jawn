class User < ApplicationRecord
  has_many :reviews
  has_many :activities, through: :reviews
  has_many :friendships, foreign_key: :user_id, class_name: "Friendship"
  has_many :followees, through: :friendships

  has_many :on_friendship_list, foreign_key: :followee_id, class_name: "Friendship"
  has_many :followers, through: :on_friendship_list

  has_secure_password

  validates :name, presence: true

end
