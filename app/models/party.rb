class Party
	include Mongoid::Document
	include Mongoid::Attributes::Dynamic

	field :name, type: String
	field :date, type: String
	field :location, type: String
	field :userid, type: String
	field :email, type: String
	field :attendeeid, type: String
	field :host_id, type: String
	field :guest_list, type: Array

	belongs_to :host, class_name: "User" #person hosting the party
	has_many :attendees

	#RSVPing to parties? method to add later

	def rsvp() #guest_list needs to be included (user_id list)
	end

	def edit() # put in controller
	end

end