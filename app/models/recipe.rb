class Recipe < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :ingredients
  validates :name, uniqueness: true, presence: true
end
