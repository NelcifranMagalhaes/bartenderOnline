class Company < ApplicationRecord
  has_many :tables, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :demands, dependent: :destroy

  validates :name, presence: true
end
