class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :firstname
      t.string :lastname
      t.string :specialfood
      t.boolean :ceremony
      t.boolean :meal
      t.boolean :evening

      t.timestamps
    end
  end
end
