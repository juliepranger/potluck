class Party
	include Mongoid::Document
	field :name, type: String
	field :date, type: String
	field :location, type: String
	field :userid, type: String
	field :email, type: String

	belongs_to :user, class_name: "User" #person hosting the party
	has_many :attendees
	has_many :dashboards

	#RSVPing to parties? method to add later
	def rsvp()
	end

	def edit() # put in controller
	end

end