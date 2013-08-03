class HotelsController < ApplicationController
  def new
  	@hotel = current_user.build_hotel
  end
  
  def create
    params[:hotel][:city] = params[:hotel][:city].downcase
    @hotel =current_user.build_hotel(params[:hotel])
    @hotel.save
    redirect_to dashboard_hotels_path
  end
  
  def index

  end

  def dashboard
    @hotel = current_user.hotel
    logger.info"#########{@hotel.inspect}"
  end

  def bookings

  end

  def edit
  @hotel = current_user.hotel
  end

  def update
  @hotel = current_user.hotel
    if @hotel.update_attributes(params[:hotel])
      redirect_to dashboard_hotels_path
    else
      render 'edit'
    end
  end
end
