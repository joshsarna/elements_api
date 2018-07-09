class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.string :name
      t.string :symbol
      t.integer :atomic_number
      t.string :state
      t.integer :group
      t.integer :atomic_mass

      t.timestamps
    end
  end
end
