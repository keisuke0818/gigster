class House < ActiveRecord::Base
  attr_accessible :address, :city, :country, :created_at, :day, :detail, :image, :members_ids, :name, :updated_at, :yotube_url, :googlemap_url, :view_count

  mount_uploader :image, FlyerUploader
  paginates_per 100

  validates :name, :presence => true, :allow_blank => true, :length => {:maximum => 50}
  #validates :image, :presence => true, :allow_blank => true
  validates :detail, :presence => true, :allow_blank => true, :length => {:maximum => 10000}
  validates :country, :presence => true, :allow_blank => true

end
