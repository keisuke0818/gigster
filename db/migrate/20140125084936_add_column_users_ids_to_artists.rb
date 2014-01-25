class AddColumnUsersIdsToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :users_ids, :integer
  end
end
