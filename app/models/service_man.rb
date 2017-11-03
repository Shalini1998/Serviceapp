class ServiceMan < ApplicationRecord
  
  belongs_to :shop ,optional: true
  geocoded_by :address   
  after_validation :geocode
  mount_uploader :profile_pic, ProfilePicUploader
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :contact_no, presence: true
  validates :address, presence: true
  validates :profile_pic, presence: true
  validates :email, presence: true
  validates :shop_id, presence: true
  validates :age, presence: true
end
