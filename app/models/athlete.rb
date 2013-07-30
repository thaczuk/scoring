class Athlete < ActiveRecord::Base
  belongs_to  :competition
  belongs_to  :competition_category
  has_many    :events, through: :eventathletes
end
