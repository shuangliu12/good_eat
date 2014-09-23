class UpdateZipDatatype < ActiveRecord::Migration
  def up
    remove_column :restaurants, :zip
    add_column :restaurants, :zip, :string
  end

  def down
    remove_column :restaurants, :zip
    add_column :restaurants, :zip, :integer
  end
end
