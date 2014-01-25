class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.binary :image
      t.text :detail
      t.string :address
      t.string :country
      t.string :city
      t.date :day
      t.string :yotube_url
      t.integer :members_ids
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
