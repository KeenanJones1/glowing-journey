class ScholarCountry < RulerCountry
 attr_accessor :name, :tax_income, :provinces_num, :trade_income, :gross_income, :army_size, :production, :country_happiness

 def initialize()
  @name = name 
  @provinces_num = 3
  @army_size = 4
  @country_happiness = 4
  
  @trade_income = 5
  tax_rate = 0.9
  # improve calculations later 
  @production = (@provinces_num * @country_happiness)
  @tax_income = production / tax_rate
  @gross_income = (@tax_income + @trade_income) / army_size
 end

end
