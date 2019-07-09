class UserGroup < ApplicationRecord
#model associations
  belongs_to :user
  belongs_to :group

  #validations 
  validates_presence_of :user, :group
end

