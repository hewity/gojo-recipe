class AddUserIdToRecipeboxes < ActiveRecord::Migration
  def change
    add_column :recipeboxes, :user_id, :integer
  end
end
