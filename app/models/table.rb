class Table < ApplicationRecord
  belongs_to :company
  has_many :demands
  has_many :products, through: :demands

  validates :table_number, presence: true
  validates :company_id, presence: true

end
