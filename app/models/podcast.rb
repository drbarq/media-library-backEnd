class Podcast < ApplicationRecord
  belongs_to :user_group

  #validations
  validates_presence_of :episodeName, :showName, :url, :comment
end
