class BookingsController < ApplicationController
  def new
  	@current_time = Time.now
  	hotel = Hotel.find(params[:hotel_id])
  	@booking = hotel.bookings.new
  	@bookings = hotel.bookings.where('time_slot',@current_time)
  	@booked_tables = @bookings.collect{|p| p.table_id}
  end
  def create
  	hotel = Hotel.find(params[:hotel_id])
  	hotel.bookings.create(params[:booking])
  	redirect_to :action => :new
  end	
end
