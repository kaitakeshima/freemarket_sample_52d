class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  # has_many :images
  # belongs_to :brand
  # belongs_to :category
  belongs_to :user
end
