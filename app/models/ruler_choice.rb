class RulerChoice < ApplicationRecord
  belongs_to :ruler
  belongs_to :event

  enum choice: [:improve_income, :improve_army, :neighbor, :improve_happiness]

end
