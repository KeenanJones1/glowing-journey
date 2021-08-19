class Event < ApplicationRecord
 enum effect: [:army, :tax, :production, :providence, :neighbor, :trade, :happiness]
 
end
