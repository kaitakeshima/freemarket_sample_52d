class Item < ApplicationRecord
  mount_uploader :image, ImageUploader

  enum condition:{'新品未使用': 1, '未使用に近い': 2, '目立った傷や汚れなし': 3}
  enum delivery_fee:{'送料込み(出品者負担)': 1, '着払い(購入者負担)':2 }
  enum delivery_method:{"未定": 1, "らくらくメルカリ便": 2}
  enum delivery_days:{"１〜２日で発送": 1, "２〜３日で発送": 2, "４〜７日で発送": 3}
  enum size:{"XS": 1, "S": 2, "M": 3, "L": 4, "XL": 5}

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
