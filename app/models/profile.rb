class Profile < ActiveRecord::Base
belongs_to :user

validates_presence_of :user_id
validates_uniqueness_of :user_id

end
