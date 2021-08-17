class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.float :tax_income
      t.integer :provinces_num
      t.float :trade_income
      t.float :gross_income
      t.integer :army_size
      t.integer :production
      t.interger :country_happiness
      t.boolean :rebels
      t.string :type

      t.timestamps
    end
  end
end
