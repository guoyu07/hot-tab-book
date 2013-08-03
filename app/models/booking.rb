class Booking < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :table

  attr_accessible :email, :phone_number, :time_slot, :user_name, :table_id
end
