class DashboardsController < ApplicationController
	def index
		@dashboards = Dashboard.all #for admin purposes only
	end

	def new
		@dashboard = Dashboard.new #new user created, new dashboard needs to be created as well (see def create below)
	end

	def show #actually creating the new user w/ data provided
		@dashboard = Dashboard.create(params[:dashboard].permit(:email, :password, :name))
		redirect to action: 'show', id: @dashboard._id
	end

	def destroy
		Dashboard.find(params[:id]).destroy
		redirect to dashboards_url
	end
	
end