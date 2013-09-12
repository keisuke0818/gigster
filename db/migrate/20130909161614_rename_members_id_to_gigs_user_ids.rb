class RenameMembersIdToGigsUserIds < ActiveRecord::Migration
  def up
    rename_column :gigs, :members_ids, :users_ids
  end

  def down
  end
end
