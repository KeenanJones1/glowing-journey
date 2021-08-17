class Event < ApplicationRecord
 attr_accessor :type, :effect, :description

 def initialize(type, effect, description)
  @type = type
  @effect = effect
  @description = description
 end

 
end