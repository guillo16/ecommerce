class Category < ApplicationRecord
  has_many :products
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  validates :photo_card, presence: true
end
