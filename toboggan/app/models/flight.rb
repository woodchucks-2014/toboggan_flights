class Flight < ActiveRecord::Base
  belongs_to  :user
  has_many :notifications

  validates :beginning_airport, presence: true
  validates :ending_airport, presence: true

  validates :price, numericality: true

	def calculate_search_end
		self.search_end = 1.months_since(Time.now)
	end

end
