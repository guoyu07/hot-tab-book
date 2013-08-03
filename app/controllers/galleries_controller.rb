class GalleriesController < ApplicationController

  def new
  logger.info"############{params.inspect}"
  @hotel = Hotel.find(params[:hotel_id])
  @gallery = @hotel.build_gallery
    10.times do
      @image = @gallery.images.build
    end
  end

  def create
    logger.info"##########{params.inspect}"
  @hotel = Hotel.find(params[:hotel_id])
  @gallery = @hotel.build_gallery(params[:gallery])
    if @gallery.save
      redirect_to hotels_path
    else
    render 'new'
    end
  end
end
