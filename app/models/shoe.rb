class Shoe < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :gender
  belongs_to :size
  has_one_attached :picture

  validates :name, presence: true, length: { maximum: 300 }
  validates :price, presence: true

  validates :picture, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..3.megabytes }
end
