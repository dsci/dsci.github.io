class CreateFormatters < ActiveRecord::Migration
  def change
    create_table :formatters do |t|
      t.string :identifier
      t.timestamps
    end
  end
end
