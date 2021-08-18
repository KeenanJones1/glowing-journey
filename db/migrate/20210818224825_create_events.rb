class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :type
      t.integer :effect
      t.text :description

      t.timestamps
    end
  end
end
