class Image < ActiveRecord::Base
  attr_accessible :data

  belongs_to :gallery
end
