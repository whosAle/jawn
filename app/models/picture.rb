class Picture < ApplicationRecord
  belongs_to :review

  validate :formatted_correctly_img

  def formatted_correctly_img
    if (!self.img_url.empty?) && !(self.img_url.ends_with?(".jpg") || self.img_url.ends_with?(".png") || self.img_url.ends_with?(".gif") || self.img_url.ends_with?(".jpeg"))
      errors.add(:img_url, "needs to end with .jpeg/.jpg/.png/.gif ")
    end
  end

end
