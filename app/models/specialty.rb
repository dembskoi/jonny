class Specialty < ActiveRecord::Base
  has_many :doctors, dependent: :destroy
  attr_accessible :name
  validates :name, presence: true
  validates_uniqueness_of :name

  self.per_page = 10
end
