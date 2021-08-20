class ArtisticCountry < RulerCountry

 def generate()
  number_of_providences = 3
  army_size = 3
  country_happiness = 5
  trade_income = 5
  tax_rate = 0.3
  
  self.update(number_of_providences: number_of_providences,army_size:army_size, country_happiness:country_happiness,trade_income:trade_income, tax_rate:tax_rate)

  self.country_calc(country_happiness, army_size, trade_income, tax_rate, number_of_providences)
  
 end


 

end


