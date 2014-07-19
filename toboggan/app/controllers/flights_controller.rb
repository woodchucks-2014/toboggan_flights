class FlightsController < ApplicationController
  def index
  end

  def new
    @flight = Flight.new
  end

  def create
  	@flight = Flight.create(params[:flight])
  	redirect_to flight_path(@flight)
  end

  def show

  end

end

