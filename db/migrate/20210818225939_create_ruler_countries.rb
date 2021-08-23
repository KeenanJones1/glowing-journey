class CreateRulerCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :ruler_countries do |t|
      t.references :ruler, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.float :tax_income
      t.integer :number_of_providences
      t.float :trade_income
      t.float :gross_income
      t.integer :army_size
      t.integer :production
      t.integer :country_happiness
      t.string :type
      t.references :neighbor, foreign_key: { to_table: :ruler_countries }
      t.timestamps
    end
  end
end
