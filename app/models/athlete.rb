class Athlete < ActiveRecord::Base
  belongs_to  :competition
  belongs_to  :competition_category
  has_many    :event_athletes
  has_many    :events, through: :event_athletes
end
