class User < ApplicationRecord
    validates :username, presence: true
    validates :password, presence: true, length: {minimum: 8}
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
