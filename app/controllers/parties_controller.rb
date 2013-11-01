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

	def create_party_access
		if current_user == :userid
			redirect_to :action => 'show', :id =>@party._id
		else
			flash[:notice] = "Uh oh, you're not signed in!"
		end
	end

	def create
		@party = Party.new(params[:party].permit(:name, :date, :email, :location, :attendeeid))
		@party.host = current_user
		@party.save
		redirect_to :action => 'show', :id =>@party._id
	end

	def update
		@party = Party.find(params[:id])
		redirect_to :action => 'show', :id =>@party_id
	end

	def destroy
		Party.find(params[:id]).destroy
		redirect_to parties_url
	end

end