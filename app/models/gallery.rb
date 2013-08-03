class Gallery < ActiveRecord::Base
  attr_accessible :title

  belongs_to :hotel
end
