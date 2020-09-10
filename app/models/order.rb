class Order < ApplicationRecord
  validates :customer, presence: true
  validates :adress, presence: true
  validates :phone_number, presence: true
end
