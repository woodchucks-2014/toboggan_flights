class UsersController < ApplicationController
	before_action :authenticate_user!

	def show
		@flights = Flight.where(current_user)
	end

end
