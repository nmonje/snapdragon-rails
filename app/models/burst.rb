class Burst < ActiveRecord::Base
  has_many :snaps
  belongs_to :event

  has_many :users, :through => :snaps
  
  validates_presence_of :snaps
  validates_presence_of :event_id
  validates_presence_of :datetime
end
