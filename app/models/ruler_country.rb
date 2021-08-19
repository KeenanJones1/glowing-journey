class RulerCountry < ApplicationRecord
  belongs_to :ruler
  belongs_to :country


  def country_calc(country_happiness, army_size, trade_income, tax_rate, number_of_providences)

    production = (number_of_providences * country_happiness)

    tax_income = production / tax_rate

    gross_income = (tax_income + trade_income) / army_size

    self.update(production: production, tax_income:tax_income, gross_income:gross_income)
  end

end
