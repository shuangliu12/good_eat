class AddDescriptionToRestaurants < ActiveRecord::Migration
  def up
    add_column :restaurants, :description, :string
  end

  def down
    remove_column :restaurants, :description
  end
end
