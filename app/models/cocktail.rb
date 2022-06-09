class Cocktail < ApplicationRecord

  validates :name, presence: true, uniquness: true #must have a unique name (thus name is present).


  has_many :measurements, dependent: :destroy  #A cocktail has many doses, #When you delete a cocktail, you should delete associated doses (but not the ingredients as they can be linked to other cocktails).


  has_many :ingredients, through: :measurements # A cocktail has many ingredients through doses

end
