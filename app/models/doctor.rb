class Doctor < ActiveRecord::Base
  belongs_to :specialty
  attr_accessible :name, :status, :phone, :specialty_id
  validates :name, :specialty_id, presence: true
  validate :specialty_id_exists

  self.per_page = 10

  private

  def specialty_id_exists
    begin
      Specialty.find(self.specialty_id)
    rescue ActiveRecord::RecordNotFound
      errors.add(:specialty_id, 'specialty_id foreign key must exist')
      false
    end
  end
end
