class Event < ActiveRecord::Base
  has_many :bursts
  has_many :snaps
  has_many :users, :through => :snaps
  
end
