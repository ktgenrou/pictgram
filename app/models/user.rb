class User < ApplicationRecord
  validates :name,
    presence: true ,
    length: { maximum: 15 }
  validates :email, 
    presence: true , 
    uniqueness: true,
    format: { with: /\A\S+@\S+\.\S+\z/}
  validates :password, 
    presence: true, 
    length: { in: 8..32 }, 
    format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i }
  
  has_secure_password
end
