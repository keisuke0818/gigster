class Comment < ActiveRecord::Base
  attr_accessible :content, :created_at, :gigs_ids, :updated_at, :users_ids

  belongs_to :gig
  belongs_to :user

end
