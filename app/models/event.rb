class Event < ApplicationRecord
 enum effect: [:army, :tax, :production, :providence, :neighbor, :trade, :happiness]
 
 # intro events
 # effect events
 # major events
 # neighbor events
 # final events

 # intro events 
# after creating a ruler and country type 

# spy on neighbor, increase army, increase taxes, increase production

# base events 
# effect country atts. 

# major events 
# effect country attrs and triggers other events.

# neighbor events 
# gives update on status of neighbor country: army size, income, happiness, type

# final events 
# ends game by killing the ruler or dying happy and passing on to heir, apocalypse 



# [:improve_income, :improve_army, :neighbor, :improve_happiness]

 def calc_choice(ruler_choice, ruler_country)
  number_of_providences = ruler_country.number_of_providences

  army_size = ruler_country.army_size
  
  country_happiness = ruler_country.country_happiness
  
  trade_income = ruler_country.trade_income 
  
  tax_rate = ruler_country.tax_rate

  byebug
  case ruler_choice
  when "improve_income"

  when "improve_army"

  when "neighbor"
   
  else
   
  end
  # using choice to increase or decrease ruler_country attrs
  
 # if event.type == major use another method to 
 end
end
