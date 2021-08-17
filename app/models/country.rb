class Country < ApplicationRecord
 attr_accessor :name, :tax_income, :provinces_num, :trade_income, :gross_income, :army_size, :production, :country_happiness
 
 def initialize(name, tax_income, provinces_num, trade_income, gross_income, army_size, production, country_happiness) 
  @name = name
  @tax_income = tax_income
  @provinces_num = provinces_num
  @trade_income = trade_income
  @gross_income = gross_income
  @army_size = army_size
  @production = production
  @country_happiness = country_happiness
 end

 # convert the country name to represent the people. 

 # inhertiance 
 # country type based on culture 
 # neighbor country type 
end
