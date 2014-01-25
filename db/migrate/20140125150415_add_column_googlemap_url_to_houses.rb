class AddColumnGooglemapUrlToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :googlemap_url, :string
  end
end
