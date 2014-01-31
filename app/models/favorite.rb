class Favorite < ActiveRecord::Base
  attr_accessible :created_at, :gig_id, :updated_at, :users_id

  belongs_to :gig
  belongs_to :user

end
