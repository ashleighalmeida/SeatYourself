class ApplicationController < ActionController::Base
 :ensure_logged_in
  protect_from_forgery with: :exception

  
   def ensure_logged_in
    unless current_user
      flash[:alert] = "Please log in."
    end
  end
  
private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
