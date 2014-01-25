class AddColumnSoundcloudUrlToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :soundcloud_url, :string
  end
end
