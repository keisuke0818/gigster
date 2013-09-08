class Member < ActiveRecord::Base
  attr_accessible :created_at, :email, :name, :password, :updated_at

  validates :email, :presence => true, :allow_blank => true, :email => true

end
