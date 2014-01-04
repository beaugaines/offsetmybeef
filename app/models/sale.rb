class Sale < ActiveRecord::Base
  belongs_to :offset
  belongs_to :user

  before_create :populate_guid

  delegate :name, to: :offset
  delegate :description, to: :offset
  delegate :price, to: :offset

  private

  def populate_guid
    self.guid = SecureRandom.uuid()
  end
  
end
