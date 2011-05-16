class CreateRefills < ActiveRecord::Migration
  def self.up
    create_table :refills do |t|
      t.integer :bottle_id
      t.string :genre

      t.timestamps
    end
  end

  def self.down
    drop_table :refills
  end
end
