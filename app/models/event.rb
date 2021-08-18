class Event < ApplicationRecord
 enum effects: [:army, :tax, :production, :providence, :neighbor, :trade, :happiness]
 
end
