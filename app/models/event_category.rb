class EventCategory < ActiveRecord::Base
  has_many :events
end
