class Gallery < ActiveRecord::Base
  attr_accessible :title,:images_attributes

  belongs_to :hotel
  has_many :images
  accepts_nested_attributes_for :images
end
