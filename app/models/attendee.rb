class Attendee
	include Mongoid::Document
	include Mongoid::Attributes::Dynamic

	field :name, type: String
	field :email, type: String
	field :password, type: String
	field :rsvp, type: Boolean
	field :attendee_id, type: String

	belongs_to :party
	belongs_to :user
	has_one :item

	def new
		@attendee = Attendee.new
	end

	# def invite()
	# 	@attendee = Attendee.new(params[:attendee].permit(:name, :email, :password)
	# 	party.attendee = current_user
	# 	@attendee.save

	# end

	def sort()
		if :rsvp 
		else
		end
	end

end