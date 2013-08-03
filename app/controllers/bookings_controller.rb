class BookingsController < ApplicationController
  def new
  	@current_time = Time.now
  	hotel = Hotel.find(params[:hotel_id])
  	@booking = hotel.bookings.new
  end

  def index
    hotel = Hotel.find(params[:hotel_id])
    @bookings = hotel.bookings
  end
  def create
  	hotel = Hotel.find(params[:hotel_id])
  	hotel.bookings.create(params[:booking])
  	redirect_to :action => :new
  end	
end
