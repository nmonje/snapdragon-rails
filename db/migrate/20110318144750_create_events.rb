class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.decimal :lat
      t.decimal :long
      t.datetime :start
      t.datetime :end
      t.decimal :radius
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end