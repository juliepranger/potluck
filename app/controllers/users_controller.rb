class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params.require(:user).permit(:email, :password, :password_confirmation))
		redirect_to :action => 'show', :id =>@user._id
	end

	def show
		@user = User.find(params[:id])
	end

end