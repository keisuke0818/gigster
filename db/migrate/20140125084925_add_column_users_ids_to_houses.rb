class AddColumnUsersIdsToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :users_ids, :integer
  end
end
