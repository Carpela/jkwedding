class AddEmailToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :email, :string
  end
end
