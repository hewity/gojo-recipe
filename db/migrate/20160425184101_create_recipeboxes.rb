class CreateRecipeboxes < ActiveRecord::Migration
  def change
    create_table :recipeboxes do |t|
      t.string :title
      t.string :ingredient
      t.text :instruction
      t.integer :cooking_time
      t.integer :prep_time
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
