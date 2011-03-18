class Snap < ActiveRecord::Base
  belongs_to :event
  belongs_to :burst
  belongs_to :user
end
