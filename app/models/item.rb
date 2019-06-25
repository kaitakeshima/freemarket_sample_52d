class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  # has_many :images
  # belongs_to :brand
  # belongs_to :category
  enum condition: {'新品未使用': 1, '未使用に近い': 2, '目立った傷や汚れなし': 3}
  enum delivery_fee:{'送料込み(出品者負担)': 1, '着払い(購入者負担)':2 }
  enum delivery_method:{"未定": 1, "らくらくメルカリ便": 2}
  enum delivery_days:{"１〜２日で発送": 1, "２〜３日で発送": 2, "４〜７日で発送": 3}
  enum size:{"XS": 1, "S": 2, "M": 3, "L": 4, "XL": 5}
  enum prefecture: {"北海道": 1, "青森県": 2}
  belongs_to :user
end
