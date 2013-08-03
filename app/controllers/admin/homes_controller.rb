class Admin::HomesController < ApplicationController

  def dashboard
    @hotels = Hotel.all
  end

  def invite

  end

  def send_invite
  logger.info"##########{params.inspect}"
  email = params[:email]
  UserMailer.invite_hotel(email).deliver
  flash[:notice] = "Email sent successfully"
  redirect_to dashboard_homes_path
  end
end
