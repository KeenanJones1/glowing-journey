class CreateRulerChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :ruler_choices do |t|
      t.references :ruler, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.integer :choice

      t.timestamps
    end
  end
end
