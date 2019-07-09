class Podcast < ApplicationRecord
  # model association
  belongs_to :user
  belongs_to :group

  # validation 
  validates_presence_of :title, :url, :author, :comment

end
