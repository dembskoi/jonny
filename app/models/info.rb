class Info < ActiveRecord::Base
  attr_accessible :phone_number, :location
  validates :phone_number, :location, presence: true
end
