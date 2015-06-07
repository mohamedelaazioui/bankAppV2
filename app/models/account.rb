class Account < ActiveRecord::Base
  belongs_to :status
  belongs_to :category
  belongs_to :client

end
