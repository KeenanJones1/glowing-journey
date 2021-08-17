class Artistic < Country
 def initialize(name)
  @name = name 
  @provinces_num = 3
  @army_size = 3
  @country_happiness = 5
  
  @trade_income = 5
  tax_rate = 0.3
  # improve calculations later 
  @production = (@provinces_num * @country_happiness)
  @tax_income = production / tax_rate
  @gross_income = (@tax_income + @trade_income) / army_size
 end
end