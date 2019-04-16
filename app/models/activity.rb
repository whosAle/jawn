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

  # def includes_http
  #   if url_link.match(/http:/) == nil
  #     url_link.prepend("http://", url_link)
  #   end
  # end
  #
  # def includes_http
  #   if url_link.match(/http:/) == nil
  #     url_link.concat(".com")
  #   end
  # end

  # def correct_uri
  #   byebug
  #   if open(self.url_link).status != ["200", "OK"] || open(self.url_link).errors && self.url_link
  #     errors.add(:url_link, "is not a valid url")
  #   end
  # end

end
