class RulerCountry < ApplicationRecord
  belongs_to :ruler
  belongs_to :country
end
