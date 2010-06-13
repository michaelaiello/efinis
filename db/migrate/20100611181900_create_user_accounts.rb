class CreateUserAccounts < ActiveRecord::Migration
  def self.up
    create_table :user_accounts do |t|
      t.integer :accounttype_ud
      t.string :username
      t.string :password
      t.string :associatedemail
      t.string :disposition
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :user_accounts
  end
end
