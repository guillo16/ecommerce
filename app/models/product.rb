class Product < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :line_items
  validates :name, presence: true
  monetize :price_cents

  def average
    return self.reviews.map { |r| r.rating }.sum / self.reviews.count if self.reviews.count > 0
    0
  end

  private

  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
