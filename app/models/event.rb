class Event < ActiveRecord::Base
  belongs_to  :competition
  has_many    :event_athletes, :dependent => :destroy
  has_many    :athletes, through: :event_athletes
  validates_presence_of :name, :competition_id
end
