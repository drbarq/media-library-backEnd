class Group < ApplicationRecord
  # model association
  has_many :user_groups
  has_many :users, through: :user_groups

  #validations 
  validates_presence_of :name, :description
end
