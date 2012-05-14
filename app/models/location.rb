class Location < ActiveRecord::Base

  belongs_to :puller
  belongs_to :ticket

end
