class Flight < ActiveRecord::Base
  belongs_to  :user
  has_many :notifications
  before_save :calculate_search_end

  validates :beginning_airport, presence: true
  validates :ending_airport, presence: true

	def calculate_search_end
		self.search_end = (Time.now + 60*60*24*30)
	end

end
