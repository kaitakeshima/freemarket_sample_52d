class Phone < ApplicationRecord
  validates :number, presence: true, length: { minimum:11} 
end
