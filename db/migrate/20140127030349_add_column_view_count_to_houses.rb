class AddColumnViewCountToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :view_count, :integer, default:0
  end
end
