class RemoveMainimgFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :mainImg, :string
  end
end
