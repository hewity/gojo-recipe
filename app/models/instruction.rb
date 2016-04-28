class Instruction < ActiveRecord::Base
  belongs_to :recipebox
  has_many :ingredients
end
