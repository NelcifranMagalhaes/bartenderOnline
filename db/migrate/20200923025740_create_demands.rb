class CreateDemands < ActiveRecord::Migration[6.0]
  def change
    create_table :demands do |t|
      t.belongs_to :table
      t.belongs_to :product
      t.integer :product_quantity
      t.timestamps
    end
  end
end
