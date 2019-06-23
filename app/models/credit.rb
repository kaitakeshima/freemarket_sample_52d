class Credit < ApplicationRecord
  validates :card_number, presence: true
  validates :expiration_month, presence: true
  validates :expiration_year, presence: true
  validates :securyty_code, presence: true
end
