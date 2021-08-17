personality_types = [
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


class Ruler:

    def __init__(self, first_name, dynasty_name, age):
        self.first_name = first_name
        self.dynasty_name = dynasty_name
        self.age = age
        print("Welcome " + first_name + " of house " + dynasty_name)

    # method to gain personality type
    def gain_personality(self):
        persona_list = []
        for persona in personality_types:
            persona_list.append(persona['name'])
        print(persona_list)
