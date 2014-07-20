module AirportsHelper

	def find_airport_code(country)
		airports = Airport.where(country: country)
		codes = []
		airports.each do |airport|
			if airport.code.size > 1
				arr << airport.code 
			end
		end
		return arr.sample(1)
  end

end
