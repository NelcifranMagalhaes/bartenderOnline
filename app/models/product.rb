class Product < ApplicationRecord
  belongs_to :company
  has_many :demands
  has_many :tables, through: :demands

  validates :name, presence: true
  validates :company_id, presence: true
  validates :quantity, presence: true

end
