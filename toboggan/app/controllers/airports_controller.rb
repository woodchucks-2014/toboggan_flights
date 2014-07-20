class AirportsController < ApplicationController
	include AirportsHelper

	def lookup
		find_airport_code(params[:country])
	end

end
