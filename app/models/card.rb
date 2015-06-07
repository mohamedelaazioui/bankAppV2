class Card < ActiveRecord::Base
  belongs_to :client
  belongs_to :account
  belongs_to :status
  belongs_to :type

end
