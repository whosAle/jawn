class Activity < ApplicationRecord
  has_many :reviews
  belongs_to :neighborhood
  has_one :time_of_day

  def tod
    self.time_of_day.attributes.select do |k, v|
      v == true
    end.keys
  end

  def method_name

  end

end
