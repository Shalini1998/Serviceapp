class ServiceMan < ApplicationRecord
  belongs_to :service, optional: true
  belongs_to :shop ,optional: true
  geocoded_by :address   
  after_validation :geocode
  mount_uploader :profile_pic, ProfilePicUploader
  validates :first_name, :last_name,:contact_no,:address,:profile_pic,:email,:shop_id,:age, presence: true
end
