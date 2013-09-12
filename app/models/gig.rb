class Gig < ActiveRecord::Base

  attr_accessible :created_at, :day, :image, :infomation, :members_ids, :name, :prefecture_code, :updated_at, :yotube_url
  mount_uploader :image, ImageUploader

  include JpPrefecture
  jp_prefecture :prefecture_code

  validates :name, :presence => true, :allow_blank => true, :length => {:maximum => 50}
  validates :infomation, :presence => true, :allow_blank => true, :length => {:maximum => 500}
  validates :prefecture_code, :presence => true, :allow_blank => true
  validates :day, :presence => true, :allow_blank => true

end
