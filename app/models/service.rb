class Service < ApplicationRecord
  has_many :service_men
  validates :name, :description, presence: true
  
  end
