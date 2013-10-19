class PartiesController < ApplicationController
	def index
		@parties = Party.all
	end

	def show
		@parties = Party.find(params[:id])
	end

end