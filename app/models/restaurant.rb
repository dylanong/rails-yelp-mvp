class Restaurant < ApplicationRecord
  CUISINE = ['chinese', 'italian', "japanese", "french", "belgian"]
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :category, inclusion: { in: CUISINE }

  has_many :reviews, dependent: :destroy
end
