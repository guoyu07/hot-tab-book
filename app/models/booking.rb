class Booking < ActiveRecord::Base
  attr_accessible :email, :phone_number, :time_slot, :user_name

  belongs_to :hotel
end
