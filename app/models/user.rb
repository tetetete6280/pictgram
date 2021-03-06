class User < ApplicationRecord
  
  validates :name, presence: true, length: {maximum: 15}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  
  has_secure_password
  
  #
  has_many :topics
  has_many :favorites, dependent: :destroy
  has_many :favorite_topics, through: :favorites, source: 'topic'
  #
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i
  validates :password, presence: true, length: {minimum: 8, maximum: 32}, format:{with: VALID_PASSWORD_REGEX}
#test

#VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{8,32}\z/
 # validates :password, presence: true,
           # format: { with: VALID_PASSWORD_REGEX}
  
end   