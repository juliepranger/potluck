class Attendee
	include Mongoid::Document
	include Mongoid::Attributes::Dynamic

	field :name, type: String
	field :email, type: String
	field :password, type: String
	field :rsvp, type: Boolean

	belongs_to :party
	belongs_to :user
	has_one :food_item

	def invite()
	end

	def sort()
	end

end