 class Ruler
  attr_accessor :age, :first_name, :dyansty_name, :personality, :skills

  @@personality_types = [
   {"name": "Just",
    "effect": "increase",
    "target": "Happiness",
    "amount": 2,
    "description": "This ruler is Just. Due to a keen understanding of the many laws and customs of his realm our subjects trust us to rule rightfully and justly."
    },
   {"name": "Entrepreneur",
    "effect": "increase",
    "target": "Trade Income",
    "amount": 2,
    "description": "This ruler is an Entrepreneur. By seeing the potential for new projects in any obstacle or opportunity our ruler contributes to an ever growing number of projects to bolster our economy."
    },
   {"name": "Conqueror",
    "effect": "increase",
    "target": "Army Size",
    "amount": 2,
    "description": "This ruler is a conqueror. We will be able to incorporate new lands into our realm more efficiently under this regime."
    }
]

 def initialize(age, first_name, dyansty_name)
  @age = age
  @first_name = first_name
  @dyansty_name = dyansty_name
 end

 def self.personality_types
  @@personality_types
 end

def personality_types
 @@personality_types
end

 def gain_personality(input)
  choosen_personality = personality_types.select{
   |ele| ele[:name] == input
  }
  
  self.personality = choosen_personality[0]
 end

end
