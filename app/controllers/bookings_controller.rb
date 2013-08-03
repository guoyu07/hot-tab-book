class BookingsController < ApplicationController
  def new
  end

  def index
    hotel = Hotel.find(params[:hotel_id])
    @bookings = hotel.bookings
  end
end
