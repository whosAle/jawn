class User < ApplicationRecord
  has_many :reviews#, dependent: :destroy
  has_many :activities, through: :reviews
  has_many :friendships, foreign_key: :user_id, class_name: "Friendship"#, dependent: :destroy
  has_many :followees, through: :friendships

  has_many :on_friendship_list, foreign_key: :followee_id, class_name: "Friendship"
  has_many :followers, through: :on_friendship_list

  has_secure_password

  validates :name, uniqueness: true

 

  def num_of_reviews
    self.reviews.length
  end

  def average_rating
    average = self.reviews.inject(0.0) { |sum, r| sum += r.rating}/self.num_of_reviews
    average.round(1)
  end

  def most_reviewed_hood
    hood_array = self.reviews.map do |r|
      r.activity.neighborhood
    end
    hood_hash = hood_array.inject(Hash.new(0)) { |h, v| h[v] += 1; h }
    the_hood = hood_array.max_by { |v| hood_hash[v]}
    if the_hood
      the_hood.name
    end
  end

  def all_followees_reviews
    self.followees.map do |f|
      f.reviews
    end.flatten
  end

  def top_ten_followee_reviews
    self.all_followees_reviews.max_by(10) { |f| f.updated_at}
  end

end
