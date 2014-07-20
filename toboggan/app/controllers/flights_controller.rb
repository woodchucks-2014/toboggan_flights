class FlightsController < ApplicationController
  def index
  end

  def new
    @flight = Flight.new
  end

  def create
  	@flight = Flight.new
    if @flight.save
      p "*"*50
      @user = User.create(user_params)
      p "8"*20
      p @user
      @user.flights << @flight
      flash[:notice] = "Success! You're one step closer to adventure."
  	  redirect_to flight_path(@flight)
    else 
      flash[:notice] = "Oops! Looks like you didn't enter everything correctly. Try again."
      render :new
    end
  end

  def show
    @flight = Flight.find(params[:id])
  end

  def edit
    @flight = Flight.find(params[:id])
    render :edit
  end

  def update
    @flight = Flight.find(params[:id])
    if @flight.update(flight_params)
      redirect_to @flight
    else
      flash[:notice] = "Oops! Something didn't save right. Try again."
      render :edit
    end
  end

  private

  def flight_params
    params.require(:flight).permit(:beginning_airport, :ending_airport, :price)
  end

  def user_params
    params.require(:user).permit(:phone_number)
  end

end

