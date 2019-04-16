class TimeOfDay < ApplicationRecord
  belongs_to :activity
  validate :any_tod

  def any_tod
    if !self.morning && !self.afternoon && !self.evening && !self.late_night
      errors.add("Time of Day", "needs to be accessable at least one time of day")
    end
  end

end
