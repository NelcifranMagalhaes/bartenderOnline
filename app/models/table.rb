class Table < ApplicationRecord
  belongs_to :company
  has_many :demands
  has_many :products, through: :demands

end
