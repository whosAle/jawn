class Neighborhood < ApplicationRecord
  has_many :activities


  # have a picture for each neighborhood from the neighborhood's reviews

  def hood_pic
    foo = []
    self.activities.each do |activity|
      activity.reviews.each do |review|
        if review.picture
          foo << review.picture
        end
      end
    end
    byebug
    foo.sample.img_url
  end

end
