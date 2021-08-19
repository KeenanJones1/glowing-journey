class Ruler < ApplicationRecord
 has_one :ruler_country
 has_one :country, through: :ruler_country
 has_many :ruler_choices
 has_many :events, through: :ruler_choices

end
