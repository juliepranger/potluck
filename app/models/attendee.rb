require 'bcrypt'

class Attendee
	include Mongoid::Document

	field :name, type: String
	field :email, type: String
	field :rsvp, type: Boolean

	belongs_to :party
	belongs_to :user
end