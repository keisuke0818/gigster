class AddColumnSoundcloudUrlToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :soundcloud_url, :string
  end
end
