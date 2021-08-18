class WarlikeCountry < RulerCountry
 attr_accessor :name, :tax_income, :provinces_num, :trade_income, :gross_income, :army_size, :production, :country_happiness


 def initialize(name)
  @name = name 
  @provinces_num = 5
  @army_size = 6
  @country_happiness = 3
  
  @trade_income = 2
  tax_rate = 1.2
  # improve calculations later 
  @production = (@provinces_num * @country_happiness)
  @tax_income = production / tax_rate
  @gross_income = (@tax_income + @trade_income) / army_size
 end

end
