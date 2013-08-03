class HotelsController < ApplicationController
  def new
  	@hotel = Hotel.new
  end
  
  def create
    logger.info"#######{params[:hotel]}"
    params[:hotel][:city] = params[:hotel][:city].capitalize
    @hotel = Hotel.create(params[:hotel])
  	redirect_to :action => 'index'
  end
  
  def index
  	@hotels = Hotel.all
  end

  def dashboard

  end
end
