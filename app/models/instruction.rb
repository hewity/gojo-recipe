class Instruction < ActiveRecord::Base
  belongs_to :recipebox
  belongs_to :Ingredient
end
