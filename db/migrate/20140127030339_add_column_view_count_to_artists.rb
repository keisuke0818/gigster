class AddColumnViewCountToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :view_count, :integer, default:0
  end
end
