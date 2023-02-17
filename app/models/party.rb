class Party < ActiveRecord::Base
    has_many :characters
    has_many :stats, through: :characters
end