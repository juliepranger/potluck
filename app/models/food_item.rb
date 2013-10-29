class Food_Item
	include Mongoid::Document

	field :type, type: String
	field :food_name, type: String

	def bring()
	end

end