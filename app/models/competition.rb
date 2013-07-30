class Competition < ActiveRecord::Base
  has_many  :athletes
  has_many  :events
end