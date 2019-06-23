class House < ApplicationRecord
  validates :postalcode, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :address, presence: true
end
 