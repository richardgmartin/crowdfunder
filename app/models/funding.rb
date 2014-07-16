class Funding < ActiveRecord::Base
  belongs_to :project
  has_one :reward
end
