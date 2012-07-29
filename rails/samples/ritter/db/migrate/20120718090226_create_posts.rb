class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :text
      t.integer :author_id
      t.datetime :written_at
      t.timestamps
    end

    add_index :posts, :author_id
    add_index :posts, :text
  end

end
