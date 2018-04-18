class Order < ApplicationRecord
  has_many :items
  validates :name, presence: :true
  validates :store_location, presence: :true
end
