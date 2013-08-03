class AddHotelToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :hotel_id, :integer
  end
end
