class Service < ApplicationRecord
  has_many :service_men
  validates :name, presence: true
  validates :description, presence: true
end
