class Snap < ActiveRecord::Base
  belongs_to :event
  belongs_to :burst
  belongs_to :user
  
  has_attached_file :photo,
								    :url  => "/images/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/images/:id/:style/:basename.:extension"
    
end

