class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.integer :price
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
