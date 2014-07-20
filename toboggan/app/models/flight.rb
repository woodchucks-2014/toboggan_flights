class Flight < ActiveRecord::Base
  belongs_to  :user
  has_many :notifications
  before_save :calculate_search_end

  validates :beginning_airport, presence: true
  validates :ending_airport, presence: true
  validates :phone_number, format: { with: /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/ ,
                           message: "Wrong Format 000-000-0000"}

	def calculate_search_end
		self.search_end = (Time.now + 60*60*24*30)
	end

end
