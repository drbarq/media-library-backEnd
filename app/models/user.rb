class User < ApplicationRecord
  #model association
  has_many :podcasts
  has_many :UserGroup
  has_many :groups, through: :UserGroup

  #validations 
  validates_presence_of :name, :email
end
