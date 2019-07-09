class Podcast < ApplicationRecord
  #model assocations
  belongs_to :user

  #validations
  validates_presence_of :title, :author, :url, :comment
end
