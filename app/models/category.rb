class Category < ApplicationRecord
  has_many :shoes, dependent: :destroy

  validates :name, presence: true
end
