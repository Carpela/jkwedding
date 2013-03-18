class AddNotcomingToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :notcoming, :boolean
  end
end
