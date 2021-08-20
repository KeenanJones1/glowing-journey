class AddTaxRateToRulerCountry < ActiveRecord::Migration[6.0]
  def change
    add_column :ruler_countries, :tax_rate, :integer
  end
end
