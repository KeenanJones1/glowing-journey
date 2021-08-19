class WarlikeCountry < RulerCountry

 def generate()
  number_of_providences = 5
  army_size = 6
  country_happiness = 3
  trade_income = 2
  tax_rate = 1.2
  # improve calculations later 
  product = (number_of_providences * country_happiness)
  tax_income = product / tax_rate
  gross_income = (tax_income + trade_income) / army_size

  self.update(number_of_providences: number_of_providences,army_size:army_size, country_happiness:country_happiness,trade_income:trade_income, product:product,tax_income:tax_income, gross_income: gross_income)

  print "Hello"
 end

end
