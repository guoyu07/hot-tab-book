class Admin::HomesController < ApplicationController

  def dashboard
    @hotels = Hotel.all
  end

  def invite

  end

  def send_invite
  email = params[:email]
  flash[:notice] = "Email sent successfully"
  #EventNotification.event_invitation(emails,user,event,chapter).deliver
  redirect_to dashboard_homes_path
  end
end
