class Funding < ActiveRecord::Base
  # belongs_to :project
  belongs_to :reward
  belongs_to :backer, class_name: "User"
end
