class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5]
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RATING }

  belongs_to :restaurant
end
