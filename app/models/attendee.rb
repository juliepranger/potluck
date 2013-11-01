class Attendee
	include Mongoid::Document
	include Mongoid::Attributes::Dynamic

	field :name, type: String
	field :email, type: String
	field :password, type: String
	field :rsvp, type: Boolean
	field :attendee_id, type: String
	field :guest_list, type: Array

	belongs_to :party
	belongs_to :user
	has_one :item

	def new
		@attendee = Attendee.new
	end

	def invite(attendee)
		@attendee = Attendee.new(params[:attendee_id].permit(:name, :email, :password, :id, :item))

	end

	def sort()
		if :rsvp 
		else
		end
	end

end