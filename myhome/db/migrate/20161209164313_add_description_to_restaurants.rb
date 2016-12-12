class AddDescriptionToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :description, :string
    remove_column :restaurants, :description, :string
  end
end
