class CreateRulers < ActiveRecord::Migration[6.0]
  def change
    create_table :rulers do |t|
      t.string :first_name
      t.string :dynasty_name
      t.integer :age
      t.string :personality

      t.timestamps
    end
  end
end
