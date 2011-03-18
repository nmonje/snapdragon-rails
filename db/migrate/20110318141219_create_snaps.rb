class CreateSnaps < ActiveRecord::Migration
  def self.up
    create_table :snaps do |t|
      t.integer :user_id
      t.integer :burst_id
      t.string :image_url
      t.decimal :lat
      t.decimal :long
      t.datetime :datetime
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :snaps
  end
end
