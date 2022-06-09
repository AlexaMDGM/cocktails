class Ingredient < ApplicationRecord
  validates :name, presence: true, uniquness: true
  has_many :measurements
end
