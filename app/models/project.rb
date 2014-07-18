class Project < ActiveRecord::Base
  has_many :fundings, through: :rewards
  has_many :rewards
  belongs_to :hacker, class_name: "User"
  has_many :backers, through: :fundings, source: :backer
end
