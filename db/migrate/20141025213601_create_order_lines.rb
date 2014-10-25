class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.integer :quantity
      t.references :product, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
