class Attendee
	include Mongoid::Document
	include Mongoid::Attributes::Dynamic

	field :name, type: String
	field :email, type: String
	field :password, type: String
	field :rsvp, type: Boolean
	field :attendee_id, type: String
	field :guest_list, type: Array
	field :party_id, type: String

	belongs_to :party
	has_one :item, class_name: "Item", inverse_of: :attendee

	def new
		@attendee = Attendee.new
	end

	def invite(attendee)
		@attendee = Attendee.new(params[:attendee].permit(:name, :email, :id, :item))

	end

	def sort()
		if :rsvp 
		else
		end
	end

end