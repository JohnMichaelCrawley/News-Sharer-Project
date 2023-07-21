class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :postID
      t.string :title
      t.integer :categoryID
      t.integer :upvotes, null: false, default: 0
      t.integer :downvotes, null: false, default: 0s
      t.string :url
      t.datetime :timestamp

      t.timestamps
    end
  end
end

