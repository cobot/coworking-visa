class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.text  :address
      t.string :url
      t.string :email
      t.string :password_hash
      t.boolean :active
    end
  end

  def self.down
    drop_table :users
  end
end
