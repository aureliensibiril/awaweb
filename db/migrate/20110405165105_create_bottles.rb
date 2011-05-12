class CreateBottles < ActiveRecord::Migration
  def self.up
    create_table :bottles do |t|
      t.string :serial
      t.datetime :cleaning
      t.integer :user_id

      t.timestamps
    end
    
  end

  def self.down
    drop_table :bottles
  end
end
