class Party
	include Mongoid::Document
	include Mongoid::Attributes::Dynamic

	field :name, type: String
	field :date, type: String
	field :location, type: String
	field :userid, type: String
	field :email, type: String
	field :attendee_id, type: String
	field :host_id, type: String

	belongs_to :host, class_name: "User" #person hosting the party
	has_many :attendees
	has_many :dashboards

	#RSVPing to parties? method to add later

	def rsvp()
	end

	def edit() # put in controller
	end

end