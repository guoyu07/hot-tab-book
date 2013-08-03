class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :user_name
      t.string :phone_number
      t.string :email
      t.datetime :time_slot

      t.timestamps
    end
  end
end
