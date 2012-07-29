class AddFormatterToUser < ActiveRecord::Migration
  def change
    add_column :users, :formatter_id, :integer
    add_index :users, :formatter_id
  end
end
