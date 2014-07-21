class UsersController < ApplicationController
	before_action :authenticate_user!

	#Devise Helpers
	# member_signed_in?
	# current_member
	# member_session
	def new
  	@user = User.new
	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	    redirect_to root_url, :notice => "Signed up!"
	  else
	    render "new"
	  end
	end
end
