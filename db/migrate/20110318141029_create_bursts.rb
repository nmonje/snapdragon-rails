class CreateBursts < ActiveRecord::Migration
  def self.up
    create_table :bursts do |t|
      t.datetime :datetime
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bursts
  end
end
