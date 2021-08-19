class RulerChoice < ApplicationRecord
  belongs_to :ruler
  belongs_to :event
  validates :choice, :inclusion => {:in => 0..4}
  enum choice: [:improve_income, :improve_army, :neighbor, :improve_happiness]
end
