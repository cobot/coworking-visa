class CreatePasses < ActiveRecord::Migration
  def self.up
    create_table :passes do |t|
      t.string :name
      t.string :code
      t.datetime :created_at
      t.datetime :valid_until
      t.datetime :used_at
    end
  end

  def self.down
    drop_table :spaces
  end
end
