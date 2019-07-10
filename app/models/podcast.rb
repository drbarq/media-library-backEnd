class Podcast < ApplicationRecord
  #model assocations
  belongs_to :user

  #validations
  validates_presence_of :episodeName, :showName, :url, :comment
end
