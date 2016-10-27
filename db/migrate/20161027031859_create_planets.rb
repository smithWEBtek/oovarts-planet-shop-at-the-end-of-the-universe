class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :price
      t.integer :population
      t.integer :moons
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
