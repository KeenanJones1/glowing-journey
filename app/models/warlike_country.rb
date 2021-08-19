class WarlikeCountry < RulerCountry

 def generate()
  number_of_providences = 5
  army_size = 6
  country_happiness = 3
  trade_income = 2
  tax_rate = 1.2

  self.update(number_of_providences: number_of_providences,army_size:army_size, country_happiness:country_happiness,trade_income:trade_income)
  
  self.country_calc(country_happiness, army_size, trade_income, tax_rate, number_of_providences)
 end

end
