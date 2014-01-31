class CommentArtist < ActiveRecord::Base
  attr_accessible :artist_id, :content, :created_at, :updated_at, :user_id

  belongs_to :artist
  belongs_to :user

end
