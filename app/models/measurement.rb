class Measurement < ApplicationRecord
  validates :name, presence: true, uniquness: true

  belongs_to :cocktail
  belongs_to :ingredient
end
