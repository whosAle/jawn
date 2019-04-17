require 'open-uri'
class Activity < ApplicationRecord
  has_many :reviews
  belongs_to :neighborhood
  has_one :time_of_day

  validates :name, presence: true
  validates :category, presence: true
  validates :setting, presence: true
  validate :formatted_correctly_url
  # validate :correct_uri


  def formatted_correctly_url
    if self.url_link.starts_with?("http://")
      errors.add(:url_link, "needs to start with http:// to be a valid link")
    end
  end

  def tod
    self.time_of_day.attributes.select do |k, v|
      v == true
    end.keys
  end

  def average_rating
    self.reviews.inject(0.0) do |sum, review|
      sum += review.rating
    end / self.reviews.length
  end

end
