class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :content, presence: true, length: { minimum: 20, maximum: 200 }
  validates :rating, presence: true
end
