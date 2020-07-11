class Shoe < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :gender
  belongs_to :size
end
