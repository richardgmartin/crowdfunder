class Project < ActiveRecord::Base
  has_many :fundings
  has_many :rewards
end
