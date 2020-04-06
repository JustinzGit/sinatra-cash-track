class User < ActiveRecord::Base
  has_many :bills
  has_many :debitcards
  has_many :creditcards
  has_many :user_banks
  has_many :banks, through: :user_banks
end
