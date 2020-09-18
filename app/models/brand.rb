class Brand < ApplicationRecord
  has_many :shoes, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
end
