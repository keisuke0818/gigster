class Gig < ActiveRecord::Base

  attr_accessible :created_at, :day, :flyer, :flyer_cache, :infomation, :members_ids, :name, :prefecture_code, :updated_at, :yotube_url

  include JpPrefecture
  jp_prefecture :prefecture_code

  mount_uploader :flyer, FlyerUploader

  validates :name, :presence => true, :allow_blank => true, :length => {:maximum => 50}
  validates :infomation, :presence => true, :allow_blank => true, :length => {:maximum => 500}
  validates :prefecture_code, :presence => true, :allow_blank => true
  validates :day, :presence => true, :allow_blank => true
  validates :flyer, :presence => true, :allow_blank => true

end
