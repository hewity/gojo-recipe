require 'test_helper'

class RecipeboxTest < ActiveSupport::TestCase

  def setup
    @recipebox = User.create(username: "smith", email: "smith@example.com")
    @recipebox = @user.recipeboxes.build(title: "chicken pie", ingredient: "Tomato, Chicken, onion" instruction: "this is the best recipe ever, yum yum")
  end

  test "recipebox should be valid" do
    assert @recipebox.valid?
  end
  
  test "user_id should be valid" do
    @recipebox.name = "nill"
    assert_not @recipebox.valid

  test "name should be present" do
    assert @recipebox.valid?
  end

  test "instruction should not be too long" do
    @recipebox.instruction = "a"

  test "email length should be within bunds" do

  end

  test "ingredient should not be too short" do
    @recipebox.recipebox = "on"
    assert_not @chef.valid?
  end
  end

end
