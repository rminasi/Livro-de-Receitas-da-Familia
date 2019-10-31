class Ingredient < ApplicationRecord
  belongs_to :recipe
  # accepts_nested_attributes_for :recipe
end
