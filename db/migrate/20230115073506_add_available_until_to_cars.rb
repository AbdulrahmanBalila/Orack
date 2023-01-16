class AddAvailableUntilToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :available_until, :datetime
  end
end
