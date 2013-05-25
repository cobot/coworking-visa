class AddUserIdToPasses < ActiveRecord::Migration
  def self.up
    add_column :passes, :user_id, :integer
  end

  def self.down
    remove_column :passes, :user_id
  end
end