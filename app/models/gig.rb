class Gig < ActiveRecord::Base

  attr_accessible :created_at, :day, :flyer, :flyer_cache, :infomation, :members_ids, :name, :country, :updated_at, :yotube_url, :city, :soundcloud_url, :view_count

  include JpPrefecture
  jp_prefecture :prefecture_code

  mount_uploader :flyer, FlyerUploader
  paginates_per 100

  validates :name, :presence => true, :allow_blank => true, :length => {:maximum => 50}
  validates :infomation, :presence => true, :allow_blank => true, :length => {:maximum => 10000}
  validates :day, :presence => true, :allow_blank => true
  #validates :flyer, :presence => true, :allow_blank => true
  validates :country, :presence => true, :allow_blank => true

end
