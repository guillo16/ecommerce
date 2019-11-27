class Product < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
end
