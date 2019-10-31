class Recipe < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :ingredients
  # accepts_nested_attributes_for :ingredients
  validates :name, uniqueness: true, presence: true
end
