class Status < ActiveRecord::Base
  has_many :accounts
  has_many :cards

end
