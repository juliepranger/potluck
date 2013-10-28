class Dashboard #set up the homepage for the user that has signed in/created an account
	include Mongoid::Document

	field :email, type: String # attributes of a user's dashboard, can be expanded out as 
	field :password, type: String # site grows (e.g. username, birthday, address, etc)
	field :name, type: String

	belongs_to :user # 1 dashboard to 1 user

end