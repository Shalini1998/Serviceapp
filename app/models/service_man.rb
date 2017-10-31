class ServiceMan < ApplicationRecord
  belongs_to :shop ,optional: true
  geocoded_by :address   
  after_validation :geocode
  mount_uploader :profile_pic, ProfilePicUploader
end
