class Recipebox < ActiveRecord::Base
    has_many :ingredients
    has_many :instructions
  end
