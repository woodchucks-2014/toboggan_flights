class UsersController < ApplicationController
	before_action :authenticate_user!

	def show
		@flights = Flight.where(current_user)

	end

	def new

	end

	def create

	end

	def update

	end

	# sign_out @user 

	def destroy
		@user.destroy
		redirect_to "/"
	end

end
