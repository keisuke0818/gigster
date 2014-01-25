class Artist < ActiveRecord::Base
  attr_accessible :city, :country, :created_at, :day, :detail, :gunre, :image, :members_ids, :name, :updated_at, :yotube_url, :soundcloud_url

  mount_uploader :image, FlyerUploader
  paginates_per 100

  validates :name, :presence => true, :allow_blank => true, :length => {:maximum => 50}
  validates :gunre, :presence => true, :allow_blank => true, :length => {:maximum => 50}
  #validates :image, :presence => true, :allow_blank => true
  validates :detail, :presence => true, :allow_blank => true, :length => {:maximum => 10000}
  validates :country, :presence => true, :allow_blank => true

end
