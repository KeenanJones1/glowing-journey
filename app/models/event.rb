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



end
