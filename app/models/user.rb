class User < ApplicationRecord
    has_secure_password

    validates_presence_of :username
    validates_pesence_of :password  

    def welcome
        "Hello, #{self.email}!"
    end
end
