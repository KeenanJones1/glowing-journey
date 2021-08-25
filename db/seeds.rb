# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RulerChoice.destroy_all
Event.destroy_all
RulerCountry.destroy_all
Country.destroy_all
Ruler.destroy_all

ruler = Ruler.create(first_name: 'Keenan', dynasty_name: 'Jones',age: 23, personality:'warlike')

country = Country.create(name: 'Keenanistan')

ruler_country = WarlikeCountry.create(ruler: ruler, country: country)

ruler_two = Ruler.create(first_name: 'Manuel', dynasty_name: 'Tish',age: 23, personality:'artistic')

country_two = Country.create(name: 'Tish')

ruler_country_two = ArtisticCountry.create(ruler: ruler_two, country: country_two)



ruler_three = Ruler.create(first_name: 'Victoria', dynasty_name: 'Wells',age: 23, personality:'scholar')

country_three = Country.create(name: 'Wells')


ruler_country_three = ScholarCountry.create(ruler: ruler_three, country: country_three)

event_one = BaseEvent.create(effect:1, description: "Shiny metal found in a nearby cave should we explore it?")

event_two = NeighborEvent.create(effect:4, description: "A few slightly shady looking characters have appeared at our court, offering their service. They claim to be willing and able to do things that any proper ruler would never deign to do - publicly.")

event_three = MajorEvent.create(effect:6, description: "With traitor armies raising their flags in rebellion across our empire, rebels think they can smell blood in the water and have joined the other malcontents in revolt.")

# improve this
event_four = FinalEvent.create(effect:6, description: "There is widespread support among the people and the nobility for our current policies. Indeed, they are being magnified well beyond their actual efficiency as proof of the government's goodwill and interest in the welfare of the realm.")

event_five = MajorEvent.create(effect:6, description: "High taxes, and cultural and religious differences have caused unhappiness among our citizens. If this continues it will drastically affect the stability of our nation.")

# event_four = NeighborEvent.create(effect:4, description: "A few slightly shady looking characters have appeared at our court, offering their service. They claim to be willing and able to do things that any proper ruler would never deign to do - publicly.")



ruler_one_choice = RulerChoice.create(ruler: ruler, event: event_one, choice: 0)

ruler_two_choice = RulerChoice.create(ruler: ruler, event: event_one, choice: 1)

ruler_three_choice = RulerChoice.create(ruler: ruler, event: event_one, choice: 2)




ruler_country_three.generate()
ruler_country_two.generate()
ruler_country.generate()
ruler_country.calc_choice(ruler_one_choice, event_one)

ruler_country.calc_choice(ruler_two_choice, event_one)

# ruler_country.calc_choice(ruler_three_choice, event_one)
# inside of generate add method to generate stack of events. 
