class Item < ApplicationRecord
has_many :images
belongs_to :brand
belongs_to :category
belongs_to :user
end
