class FlightsController < ApplicationController
  def index
  end

  def new
    @flight = Flight.new
  end

  def create
  	@flight = Flight.create(flight_params)
  	redirect_to flight_path(@flight)
  end

  def show

  end

  private

  def flight_params
    params.require(:flight).permit(:beginning_airport, :ending_airport, :search_end, :price)
  end

end

