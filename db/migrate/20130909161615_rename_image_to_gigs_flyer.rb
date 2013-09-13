class RenameImageToGigsFlyer < ActiveRecord::Migration
  def up
    rename_column :gigs, :image, :flyer
  end

  def down
  end
end
