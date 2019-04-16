class Neighborhood < ApplicationRecord
  has_many :activities


  # have a picture for each neighborhood from the neighborhood's reviews

  def hood_pic
    f = nil
    while !f
      byebug
      f = self.activities.sample.reviews.sample.picture
      if f
        f.img_url
      end
    end
  end
end
