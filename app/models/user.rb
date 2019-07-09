class User < ApplicationRecord
    # model association
    has_many :podcasts, dependent: :destroy
    has_many :groups, through: :podcasts

    #validations 
    validates_presence_of :name, :email
end
