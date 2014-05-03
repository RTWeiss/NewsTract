class User < ActiveRecord::Base
  has_many :subscriptions
  has_many :topics, through: :subscriptions

  # Adds methods to set and authenticate against a BCrypt password,
  # Adds adds validations for presence of password on create and confirmation of password 
  has_secure_password
  
end
