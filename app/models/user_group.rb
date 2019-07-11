class UserGroup < ApplicationRecord
#model associations
  belongs_to :user
  belongs_to :group
  has_many :podcasts

  #validations 
  validates_presence_of :user_id, :group_id
end

