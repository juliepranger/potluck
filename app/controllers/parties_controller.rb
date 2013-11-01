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
		@party = Party.new(params[:party].permit(:name, :date, :email, :location, :guest_list))
		@party.host = current_user
		@party.guest_list = @party.guest_list.split(',')
		@party.save
		redirect_to :action => 'show', :id =>@party._id
	end

	def edit
		@party = Party.find(params[:id])
	end

	def update
		@party = Party.find(params[:id])
		if @party.update_attributes(params[:party].permit(:name, :date, :location, :guest_list, :email, :items))
			redirect_to action: 'show', id: @party
		else
			render 'edit'
		end
	end

	def destroy
		Party.find(params[:id]).destroy
		redirect_to parties_url
	end

end