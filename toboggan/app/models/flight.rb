class Flight < ActiveRecord::Base
  belongs_to  :user
  has_many :notifications
  before_save :calculate_search_end
  before_save :generate_airport_codes
  # before_save :generate_airport_codes

  validates :price, presence: true
  validates :beginning_airport, presence: true
  validates :ending_airport, presence: true
  validates :phone_number, format: { with: /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/ ,
                           message: "Wrong Format 000-000-0000"}

	def calculate_search_end
		self.search_end = (Time.now + 60*60*24*30)
	end

  def generate_airport_codes
    self.beginning_airport = lookup_airport(self.beginning_airport)
    self.ending_airport = lookup_airport(self.ending_airport)
  end

  def lookup_airport(country)
    airports = Airport.where(country: country)
    p airports.size
    return airports.first.code if airports.size == 1
    codes = airports.map { |airport| airport.code if airport.code.size > 1 }
    codes.compact.sample
  end

end
