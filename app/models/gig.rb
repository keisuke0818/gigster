class Gig < ActiveRecord::Base

  attr_accessible :created_at, :day, :flyer, :flyer_cache, :infomation, :members_ids, :name, :country, :updated_at, :yotube_url, :city, :soundcloud_url, :view_count, :prefecture_code

  include JpPrefecture
  jp_prefecture :prefecture_code

  has_many :favorites
  has_many :users, :through => :favorites

  has_many :comments
  has_many :users, :through => :comments

  mount_uploader :flyer, FlyerUploader
  paginates_per 100

  validates :name, :presence => true, :allow_blank => true, :length => {:maximum => 50}
  validates :infomation, :presence => true, :allow_blank => true, :length => {:maximum => 10000}
  validates :day, :presence => true, :allow_blank => true
  #validates :flyer, :presence => true, :allow_blank => true
  validates :country, :presence => true, :allow_blank => true

end
