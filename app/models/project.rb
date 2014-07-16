class Project < ActiveRecord::Base
  has_many :fundings
  has_many :rewards
  belongs_to :hacker, class_name: "User"
  has_many :backers, through: :fundings, source: :users
end
