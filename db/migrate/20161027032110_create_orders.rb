class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :price
      t.integer :size
      t.string :planet_id
      t.string :feature_id

      t.timestamps null: false
    end
  end
end
