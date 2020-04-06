class User < ActiveRecord::Base
  has_many :bills
  has_many :creditcards
  has_many :user_banks
  has_many :banks, through: :user_banks

  # Macro from active record that provides password functionality
  # Given access to authenticate method from activerecord that relies on Bcrypt
  has_secure_password

  def slug
    username.downcase + "-" + id.to_s
  end 
end
