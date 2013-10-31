class UsersController < ApplicationController

	def index
		@users = User.all
		@user = current_user
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params.require(:user).permit(:email, :password, :password_confirmation))
		redirect_to usersurl
		# :action => 'show', :id =>@user._id
	end

	def show
		@user = User.find(params[:id])
	end

end