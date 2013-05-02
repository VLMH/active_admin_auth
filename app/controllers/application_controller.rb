class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_admin_user!
    raise CanCan::AccessDenied.new("Not authorized!")

    # return nil if user_signed_in? && current_user.has_role?("admin")
    # current_user
  end

  def current_admin_user
    current_user if user_signed_in? && current_user.has_role?("admin")
  end
end
