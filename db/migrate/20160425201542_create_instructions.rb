class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.integer :amount
      t.string :measurement

      t.timestamps null: false
    end
  end
end
