class FlightsController < ApplicationController
  def index
  end

  def new
    @flight = Flight.new
  end

  def create
  	@flight = Flight.new(flight_params)
    if @flight.save
  	  redirect_to flight_path(@flight)
    else 
      render :new
    end
  end

  def show
    @flight = Flight.find(params[:id])
  end

  private

  def flight_params
    params.require(:flight).permit(:beginning_airport, :ending_airport, :search_end, :price)
  end

end

