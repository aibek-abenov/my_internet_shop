class Shoe < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :gender
  belongs_to :size
  has_one_attached :picture

  validates :name, presence: true, length: { maximum: 300 }
  validates :price, presence: true
end
