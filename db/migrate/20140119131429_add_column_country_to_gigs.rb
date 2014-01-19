class AddColumnCountryToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :country, :string
  end
end
