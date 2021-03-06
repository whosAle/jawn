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

  scope :category, ->(category) {where category: category}
  scope :setting, ->(setting) { where setting: setting }



  def formatted_correctly_url
    if !(!self.url_link.starts_with?("http://") || !self.url_link.starts_with?("https://"))
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

  def tod_output
    self.tod.map do |td|
      if td == "late_night"
        "Late Night"
      else
        td.capitalize
      end
    end.join(", ")
  end

  def self.filter_by_neighborhood(neighborhood_id, filter_queries)
    response = self.where("neighborhood_id = ?", neighborhood_id)
    filter_queries.each do |key, value|
      response = response.public_send(key, value) if value.present?
    end
    response
  end

end
