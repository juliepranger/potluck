class Attendee
	include Mongoid::Document
	include Mongoid::Attributes::Dynamic

	field :name, type: String
	field :email, type: String
	field :password, type: String
	field :rsvp, type: Boolean
	field :attendeeid, type: String
	field :guest_list, type: Array

	belongs_to :party
	belongs_to :user
	has_one :item

	def new
		@attendee = Attendee.new
	end

	def invite(attendee)
		@attendee = Attendee.new(params[:attendeeid].permit(:name, :email, :password))

	end

	def sort()
		if :rsvp 
		else
		end
	end

end