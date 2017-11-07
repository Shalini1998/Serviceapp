class Shop < ApplicationRecord
  belongs_to :owner , optional: true
  has_many :service_man
  geocoded_by :location  
  after_validation :geocode
  validates :name,:location,:owner_id, presence: true
 end
