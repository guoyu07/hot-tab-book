class Image < ActiveRecord::Base
  attr_accessible :data
  mount_uploader :data, AvatarUploader
  belongs_to :gallery
end
