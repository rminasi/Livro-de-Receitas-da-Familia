class Recipe < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :ingredients
end
