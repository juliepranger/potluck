class ItemsController < ApplicationController

	def index
		@items = Item.all
		@attendees = Attendee.all
	end

	def new
		@item = Item.new
		
	end

	def create
		@item = Item.new(params[:item].permit(:food_type, :food_name))
		@item.attendee.save
		redirect_to parties_url
	end

	def show
		@item = Item.find(params[:id])
	end

end