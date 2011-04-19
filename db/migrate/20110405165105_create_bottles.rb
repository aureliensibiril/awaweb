class CreateBottles < ActiveRecord::Migration
  def self.up
    create_table :bottles do |t|
      t.string :serial
      t.integer :refillNumber
      t.datetime :cleaning

       t.database_authenticatable :null => false
        t.recoverable
        t.rememberable
        t.trackable

         t.encryptable
         t.string :encrypted_password, :null => false, :default => '', :limit => 128
        # t.confirmable
        # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
        # t.token_authenticatable

      t.timestamps
    end
    
    add_index :bottles, :email,                :unique => true
    add_index :bottles, :reset_password_token, :unique => true
    # add_index :bottles, :confirmation_token,   :unique => true
    # add_index :bottles, :unlock_token,         :unique => true
    # add_index :bottles, :authentication_token, :unique => true
  end

  def self.down
    drop_table :bottles
  end
end
