class User < ApplicationRecord
	has_secure_password

	#attr_accessible :email, :password, :password_confirmation
	
	validates :name, presence: true, length: { minimum: 2 }
	validates :email, uniqueness: true, presence: true,length: { minimum: 5 }
    validates :password,  presence: true
                                 
end
