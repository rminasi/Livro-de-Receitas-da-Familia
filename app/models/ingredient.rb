class Ingredient < ApplicationRecord
  belongs_to :recipe
  has_many :doses
  # accepts_nested_attributes_for :recipe
end
