class IncreaseMessageLength < ActiveRecord::Migration
  def up
    change_column :guests, :message, :text
  end
  def down
    # This might cause trouble if you have strings longer
    # than 255 characters.
    change_column :guests, :message, :string
  end
end
