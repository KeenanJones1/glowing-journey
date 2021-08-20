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

event_one = Event.create(effect:1, description: "Shiny metal found in a nearby cave should we explore it?")

ruler_one_choice = RulerChoice.create(ruler: ruler, event: event_one, choice: 0)




ruler_country_three.generate()
ruler_country_two.generate()
ruler_country.generate()
event_one.calc_choice(ruler_one_choice, ruler_country)
# byebug
# inside of generate add method to generate stack of events. 
