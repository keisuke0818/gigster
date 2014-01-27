class AddColumnViewCountToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :view_count, :integer, default:0
  end
end
