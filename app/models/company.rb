class Company < ApplicationRecord
  has_many :tables
  has_many :products
end
