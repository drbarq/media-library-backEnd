class Group < ApplicationRecord
  # model association
  has_many :UserGroup
  has_many :users, through: :UserGroup

  #validations 
  validates_presence_of :name, :description
end
