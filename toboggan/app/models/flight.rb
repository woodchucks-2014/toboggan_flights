class Flight < ActiveRecord::Base
  belongs_to  :user
  has_many :notifications

  validates :beginning_airport, presence: true
  validates :ending_airport, presence: true

  validates :price, numericality: true

  # def set_duration
  #   self.duration = end_vacation.yday - start_vacation.yday + (365*(end_vacation.year - start_vacation.year))
  # end

end
