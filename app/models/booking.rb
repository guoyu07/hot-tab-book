class Booking < ActiveRecord::Base
  belongs_to :hotel

  attr_accessible :email, :phone_number, :time_slot, :user_name
end
