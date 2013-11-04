class ItemsController < ApplicationController

	def index
		@items = Item.all
		@attendees = Attendee.all
	end

	def new
		@item = Item.new
		@party = Party.find(params[:format])
	end

	def create
		@item = Item.new(params[:item].permit(:party_id, :food_type, :food_name, :drinks, :appetizer, :salad, :main_course, :side_dish, :dessert))
		@item.party = Party.find(@item.party_id)
		@item.attendee = current_user
		@item.save
		redirect_to parties_url
	end

	def show
		@item = Item.find(params[:id])
	end

end