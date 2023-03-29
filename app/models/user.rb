class User < ApplicationRecord
    has_secure_password

    # is this how validations work? idk?
    validates :username, presence: true, uniqueness: true 
    validates :email, presence: true, uniqueness: true 

    def welcome
        "Hello, #{self.email}!"
    end

    attr_accessor :login 

    def login 
        @login self.email
    end 




end
