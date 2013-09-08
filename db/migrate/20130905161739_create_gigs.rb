class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :name
      t.string :image
      t.text :infomation
      t.integer :prefecture_code
      t.date :day
      t.string :yotube_url
      t.integer :members_ids
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
