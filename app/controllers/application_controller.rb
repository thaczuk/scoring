class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    # Check database for @current_user, if nil then find user, else return @current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
  end

  def logged_in?
    !!current_user
  end

  def require_user
    unless logged_in?
      flash[:error] = "You must be logged in to do that."
      redirect_to root_path, notice: 'Please log in.'
    end
  end

  def access_denied
    flash[:error] = "You can't do that"
    redirect_to root_path
  end

  def require_admin
    access_denied unless current_user && current_user.admin?
  end
end
