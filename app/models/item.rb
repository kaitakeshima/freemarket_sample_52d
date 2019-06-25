class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  # has_many :images
  # belongs_to :brand
  # belongs_to :category
  belongs_to :user

  validates :name, presence: true
  validates :discription, presence: true
  validates :condition, presence: true
  validates :delivery_fee, presence: true
  validates :delivery_method, presence: true
  validates :delivery_days, presence: true
  validates :price, presence: true
  validates :prefecture, presence: true
  validates :image, presence: true
end
