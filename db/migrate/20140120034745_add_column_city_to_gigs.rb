class AddColumnCityToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :city, :string
  end
end
