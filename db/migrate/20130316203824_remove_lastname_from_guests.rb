class RemoveLastnameFromGuests < ActiveRecord::Migration
  def up
    remove_column :guests, :lastname
  end

  def down
    add_column :guests, :lastname, :string
  end
end
