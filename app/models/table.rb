class Table < ActiveRecord::Base
  attr_accessible :capacity, :description, :table_number

  belongs_to :hotel
  belongs_to :booking
end
