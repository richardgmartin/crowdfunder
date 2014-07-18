class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :projects, :foreign_key => "hacker_id"
  has_many :fundings, :foreign_key => "backer_id"

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
end
