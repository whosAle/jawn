class User < ApplicationRecord
  has_many :reviews
  has_many :activities, through: :reviews

  validates :name, presence: true
end
