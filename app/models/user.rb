class User < ApplicationRecord
  
  validates :name, presence: true, length: {maximum: 15}
  
  VALID_EMAIL_REGEX = /\A.*＠.*\z/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  
  has_secure_password
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i
  validates :password, presence: true, length: {minimum: 8, maximum: 32}, format:{with: VALID_PASSWORD_REGEX}
#test

#VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{8,32}\z/
 # validates :password, presence: true,
           # format: { with: VALID_PASSWORD_REGEX}
  
 # has_many :topic
end   