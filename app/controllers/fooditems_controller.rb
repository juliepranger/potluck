class FoodItemsController < ApplicationController

	def index
		@fooditems = FoodItems.all
	end

	def new
		@fooditem = FoodItem.new
	end

	def create
		@fooditem = FoodItem.new(params[:fooditem].permit(:food_type, :food_name))
		@fooditem.attendee.save
		redirect_to parties_url
	end

	def show
		@fooditem = FoodItem.find(params[:id])
	end

end