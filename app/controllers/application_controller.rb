class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    current_user.admin? ?  dashboard_homes_path :  dashboard_hotels_path
  end

end
