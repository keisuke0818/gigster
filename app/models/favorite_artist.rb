class FavoriteArtist < ActiveRecord::Base
  attr_accessible :artist_id, :created_at, :updated_at, :user_id

  belongs_to :artist
  belongs_to :user

end
