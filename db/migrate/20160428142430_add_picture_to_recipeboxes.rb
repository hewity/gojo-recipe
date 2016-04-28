class AddPictureToRecipeboxes < ActiveRecord::Migration
  def change
    add_column :recipeboxes, :picture, :string
  end
end
