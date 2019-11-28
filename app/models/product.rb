class Product < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  monetize :price_cents

  def average
    return self.reviews.map { |r| r.rating }.sum / self.reviews.count if self.reviews.count > 0
    0
  end
end
