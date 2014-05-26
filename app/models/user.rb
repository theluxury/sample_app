class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true, 
		format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i } ,
		uniqueness: { case_sensitive: false }

	validates :password, length: { minimum: 6 }

	before_save { self.email = email.downcase }
	has_secure_password
end
