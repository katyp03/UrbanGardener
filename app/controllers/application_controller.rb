class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
    profile_path(current_user.username)
  end
  def after_sign_up_path_for(resource_or_scope)
    profile_path(current_user.username)
  end
end
