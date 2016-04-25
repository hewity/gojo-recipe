class Instruction < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :Ingredient
end
