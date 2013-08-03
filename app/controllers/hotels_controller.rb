class HotelsController < ApplicationController
  def new
  	@hotel = Hotel.new
  end
  
  def create
  	Hotel.build(params[:hotel])
  end
  
  def index
  end	
end
