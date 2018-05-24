class CreateNewOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :new_orders do |t|
      t.references :restaurant, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
