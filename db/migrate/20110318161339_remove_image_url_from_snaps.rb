class RemoveImageUrlFromSnaps < ActiveRecord::Migration
  def self.up
  	remove_column :snaps, :image_url
  end

  def self.down
  	add_column :snaps, :image_url
  end
end
