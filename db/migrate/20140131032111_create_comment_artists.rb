class CreateCommentArtists < ActiveRecord::Migration
  def change
    create_table :comment_artists do |t|
      t.string :content
      t.integer :user_id
      t.integer :artist_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
