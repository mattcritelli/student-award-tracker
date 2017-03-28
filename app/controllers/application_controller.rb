class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to new_session_path, notice: "You must be logged in to use this feature" if current_user.nil?
  end

  def is_admin?
    redirect_to students_path, notice: "Not authorized" if current_user.nil? or !current_user.admin?
  end

end
