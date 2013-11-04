require 'bcrypt'

class User
	include Mongoid::Document
  include Mongoid::Attributes::Dynamic

	attr_accessor :password, :password_confirmation

	field :email, type: String
	field :salt, type: String
	field :hashed_password, type: String
  field :name, type: String
  field :is_host, type: Boolean
  field :is_attendee, type: Boolean
  field :is_current_user, type: Boolean

	has_many :parties #links to the model for parties
  has_many :items, class_name: "Item", inverse_of: :attendee

  before_save :hash_password
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, confirmation: true

  def authenticate(password)
    self.hashed_password ==
    BCrypt::Engine.hash_secret(password, self.salt)
  end

  private
  def hash_password
    if password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.hashed_password =
      BCrypt::Engine.hash_secret(password, self.salt)
      password = password_confirmation = nil
    end
  end


  def updateProfile()
  end
end