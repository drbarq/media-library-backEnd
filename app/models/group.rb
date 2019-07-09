class Group < ApplicationRecord
    # model association
    has_many :podcasts, dependent: :destroy
    has_many :users, through: :podcasts

    #validations 
    validates_presence_of :name, :description
end
