class User < ApplicationRecord
  has_many :students
  has_many :orders
  has_one :cart 
  has_secure_password
end
