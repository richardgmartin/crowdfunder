class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :projects, :foreign_key => "hacker_id"
  has_many :fundings, :foreign_key => "backer_id"
end
