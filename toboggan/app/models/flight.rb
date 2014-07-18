class Flight < ActiveRecord::Base
  belongs_to  :user
  has_many :notifications

  validates :beginning_airport, presence: true
  validates :ending_airport, presence: true
  validates :search_end, presence: true

  validates :price, numericality: true
end
