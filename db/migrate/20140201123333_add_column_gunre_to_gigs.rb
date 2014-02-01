class AddColumnGunreToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :gunre, :string
  end
end
