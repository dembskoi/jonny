class ServicePrice < ActiveRecord::Base
  belongs_to :service
  attr_accessible :name, :price, :service_id
  validates :name, :service_id, presence: true
  validate :service_id_exists

  self.per_page = 10

  private

  def service_id_exists
    begin
      Service.find(self.service_id)
    rescue ActiveRecord::RecordNotFound
      errors.add(:service_id, 'service_id foreign key must exist')
      false
    end
  end
end
