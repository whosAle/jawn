class Review < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  validates :description, presence: true
  validates :rating, presence: true
end
