class Restaurant < ApplicationRecord
  CUISINES = ['chinese', 'italian', "japanese", "french", "belgian"]
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :category, inclusion: { in: CUISINES }

  has_many :reviews, dependent: :destroy
end
