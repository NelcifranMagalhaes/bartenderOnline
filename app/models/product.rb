class Product < ApplicationRecord
  belongs_to :company
  has_many :demands
  has_many :tables, through: :demands

end
