# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ruler.destroy_all
Country.destroy_all
RulerCountry.destroy_all

ruler = Ruler.create(first_name: 'Keenan', dynasty_name: 'Jones',age: 23, personality:'warlike')
country = Country.create(name: 'Keenanistan')

ruler_country = WarlikeCountry.create(ruler: ruler, country: country)

ruler_country.generate()
