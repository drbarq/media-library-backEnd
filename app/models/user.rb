class User < ApplicationRecord
  #model association
  has_many :podcasts
  has_many :user_groups
  has_many :groups, through: :user_groups

  #validations 
  validates_presence_of :name, :email
end
