class Bank < ActiveRecord::Base
  has_many :debitcards
  has_many :creditcards
  has_many :user_banks
  has_many :users, through: :user_banks
end 
