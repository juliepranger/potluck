class PartiesController < ApplicationController
	def index
		@parties = Party.all
	end

	def new
		@party = Party.new
	end

	def show
		@party = Party.find(params[:id])
	end

	def create
		@party = Party.create(params[:party].permit(:name, :date, :user))
		redirect_to :action => 'show', :id =>@party._id
	end

	def destroy
		Party.find(params[:id]).destroy
		redirect_to parties_url
	end

end