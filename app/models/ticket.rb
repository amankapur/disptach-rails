class Ticket < ActiveRecord::Base

  has_one :location
end
