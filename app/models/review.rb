class Review < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  has_one :picture

  validates :description, presence: true
  validates :rating, presence: true
  validate :between_one_and_five

  def between_one_and_five
    if !(self.rating == nil) && (self.rating > 5 || self.rating < 1)
        errors.add(:rating, 'must be between 1 and 5')
    end
  end

end
