class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_admin_user!
    authenticate_user!
    unless current_user.has_role "admin"
      raise ActionController::RoutingError.new('Route Not Found')
    end
  end
end
