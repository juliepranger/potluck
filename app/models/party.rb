class Party
	include Mongoid::Document
	field :name, type: String
	field :date, type: String
	field :user, type: String
end