class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, unique: true, null: false
      t.string :phone, unique: true, null: false

      t.timestamps
    end
  end
end
