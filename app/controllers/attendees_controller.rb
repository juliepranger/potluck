class AttendeesController < ApplicationController

	def index	#show all attendees (for a specific party), only those invited to party can view
		@attendees = Attendee.all
	end

	def show # who is the attendee in question
		@attendee = Attendee.new
		@attendee.save
		@party.attendees.all = :guest_list
	end

	def destroy 								#canceling your invite, can't go to party?
		Attendee.find(params[:id]).destroy		# is this the same as def rsvp = false ?
		redirect_to attendees_url
	end 				


end