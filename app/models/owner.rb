class Owner < ApplicationRecord
  belongs_to :shop , optional: true
  has_many :shop
  geocoded_by :address   
  after_validation :geocode
end
