class CreateFavoriteArtists < ActiveRecord::Migration
  def change
    create_table :favorite_artists do |t|
      t.integer :user_id
      t.integer :artist_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
