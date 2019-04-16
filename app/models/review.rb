class Review < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  has_one :picture
  
  validates :description, presence: true
  validates :rating, presence: true
end
