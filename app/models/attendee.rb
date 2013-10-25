class Attendee
	include Mongoid::Document
	field :email, type: String
	field :rsvp, type: Boolean

	belongs_to :party
	belongs_to :user
end