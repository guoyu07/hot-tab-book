class HotelsController < ApplicationController
  def new
  	@hotel = Hotel.new
  end
  
  def create
  	Hotel.create(params[:hotel])
  	redirect_to :action => 'index'
  end
  
  def index
  	@hotels = Hotel.all
  end	
end
