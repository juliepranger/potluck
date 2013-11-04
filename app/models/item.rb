class Item
	include Mongoid::Document
	include Mongoid::Attributes::Dynamic

	field :food_type, type: String
	field :food_name, type: String

	belongs_to :party
	belongs_to :attendee, class_name: "User", inverse_of: :item

	# def bring()
	# end

end