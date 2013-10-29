class FoodItem
	include Mongoid::Document
	include Mongoid::Attributes::Dynamic

	field :food_type, type: String
	field :food_name, type: String

	belongs_to :attendee

	def bring()
	end

end