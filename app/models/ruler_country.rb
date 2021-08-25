require 'faker'

class RulerCountry < ApplicationRecord
  belongs_to :ruler
  belongs_to :country
  has_one :neighbor, class_name: "RulerCountry",
  foreign_key: "neighbor_id", dependent: :destroy

  @@personalities = ["Artist", "General", "Scholar"]

  @@eventEffects = {
    "tax" => "tax_rate",
    "army" => "army_size",
    "providence" => "number_of_providences",
    "neighbor" => "does something special",
    "trade" => "trade_income",
    "happiness" => "country_happiness"
  }

  @@oppositeEffects = {
    "tax" => "country_happiness",
    "army" => "tax_rate",
    "production" => "army_size",
    "providence" => "army_size",
    "neighbor" => "trade_income",
    "trade" => "tax_rate",
  }

  @@choicePercentages = {
    "improve_income" => 0.2,
    "improve_army" => 0.1,
    "improve_happiness" => 0.3,
    "neighbor" => 'does something special'
  }





  def country_calc(country_happiness, army_size, trade_income, tax_rate, number_of_providences)

    production = (number_of_providences * country_happiness)

    tax_income = production / tax_rate

    gross_income = (tax_income + trade_income) / army_size

    self.update(production: production.round(1), tax_income:tax_income.round(1), gross_income:gross_income.round(1))
  end


  def calc_choice(ruler_choice, event)
    number_of_providences = self.number_of_providences
    army_size = self.army_size
    country_happiness = self.country_happiness
    trade_income = self.trade_income 
    tax_rate = self.tax_rate

    self.statDecrease(event, ruler_choice)
    self.statIncrease(event, ruler_choice)
  end

  def statDecrease(event, ruler_choice)
    # updating stat that will decrease
    statDescrease = (self[@@oppositeEffects[event.effect]] * @@choicePercentages[ruler_choice.choice])

    statOriginal = self[@@oppositeEffects[event.effect]]
    
    statAfterDecrease = statOriginal - statDescrease

    self.update(@@oppositeEffects[event.effect] => statAfterDecrease) 
#  end of updating stat decrease
  end


  def statIncrease(event, ruler_choice)
    # beginning of updating stat increase
    baseStat = @@eventEffects[event.effect]
    statOgVal = self[@@eventEffects[event.effect]]
    statIncrease = (self[@@eventEffects[event.effect]] * @@choicePercentages[ruler_choice.choice])

    if @@eventEffects[event.effect] == "tax_rate"
      statAfterIncrease = statOgVal - statIncrease
    else
      statAfterIncrease = statOgVal + statIncrease
    end

    self.update(baseStat => statAfterIncrease) 
# end of updating stat increase
  end


  def generate_neighbor()
    neighbor_ruler = Ruler.create(first_name: Faker::Name.first_name , dynasty_name: Faker::Name.last_name , age: Faker::Number.within(range: 15..80), personality: @@personalities[Random.new.rand(0..2)])

    
    country = Country.create(name: 'Pattersonville')

    number_of_providences = Random.new.rand(0..6)
    army_size = Random.new.rand(0..6)
    country_happiness = Random.new.rand(0..6)
    trade_income = Random.new.rand(0..6)
    tax_rate = Random.new.rand(0.0...1.1)


    neighbor_country = RulerCountry.create(ruler: neighbor_ruler, country: country, number_of_providences: number_of_providences,army_size:army_size, country_happiness:country_happiness,trade_income:trade_income, tax_rate:tax_rate)

    neighbor_country.country_calc(country_happiness, army_size, trade_income, tax_rate, number_of_providences)
    self.update(neighbor: neighbor_country)
  end
  
end
