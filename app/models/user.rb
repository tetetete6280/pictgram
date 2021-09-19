class User < ApplicationRecord
  
  validates :name, presence: true, length: {maximum: 15}
  validates :email, presence: true, inclusion: {in: ["@"]}
  
  #validetes :password, confirmation: true
  
VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{8,32}\z/
  validates :password, presence: true,
            format: { with: VALID_PASSWORD_REGEX}
  
  has_secure_password
end
