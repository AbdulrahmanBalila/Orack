class AddAvailableFromToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :available_from, :datetime
  end
end
