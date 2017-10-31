class Owner < ApplicationRecord
  belongs_to :shop , optional: true
  has_many :shop
  geocoded_by :address   
  after_validation :geocode
  validates :first_name, :last_name, :email, :contact_no, :address, presence: true

  def name
    "#{self.first_name} #{self.last_name}"
  end


end
