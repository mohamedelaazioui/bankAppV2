class Banker < ActiveRecord::Base
  belongs_to :branch
  has_many :clients

end
