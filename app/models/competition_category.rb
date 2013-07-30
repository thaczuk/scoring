class CompetitionCategory < ActiveRecord::Base
  has_many  :athletes
end
