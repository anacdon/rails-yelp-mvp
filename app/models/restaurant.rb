class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  validate :verify_category, on: :create

  def verify_category
    categories = ["chinese", "italian", "japanese", "french", "belgian"]
    unless categories.include?(category)
      errors.add(:category, "category not valid")
    end
  end
end
