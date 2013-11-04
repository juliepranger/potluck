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
	field :guest_list, type: String #will convert to Array in Party's create method

	belongs_to :host, class_name: "User" #person hosting the party
	has_many :attendees
	has_many :items

	#RSVPing to parties? method to add later

	def rsvp() #guest_list needs to be included (user_id list)
	end

end