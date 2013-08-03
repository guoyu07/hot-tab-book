class HotelsController < ApplicationController
  def new
    #raise "error"
  	@hotel = Hotel.new
    logger.info ("\n\n\n####\n\n\n\n\n\\n\n\\n\n\n\n\n\n#{@hotel.inspect}")
  end
  
  def create
    @hotel = Hotel.create(params[:hotel])
  	redirect_to :action => 'index'
  end
  
  def index
  	@hotels = Hotel.all
  end

  def dashboard

  end
end
