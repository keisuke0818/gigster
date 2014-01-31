class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :gig_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
