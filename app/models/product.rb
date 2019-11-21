class Product < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
end
