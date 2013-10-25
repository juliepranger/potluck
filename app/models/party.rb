class Party
	include Mongoid::Document
	field :name, type: String
	field :date, type: String

	belongs_to :user #person hosting the party
	has_many :attendees

	#RSVPing to parties? method to add later
end