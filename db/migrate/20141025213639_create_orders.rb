class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer
      t.timestamps
    end
  end
end
