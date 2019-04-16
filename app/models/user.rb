class User < ApplicationRecord
  has_many :reviews 
  has_many :activities, through: :reviews

  has_secure_password
end
