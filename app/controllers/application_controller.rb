class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	helper_method :logged_in?

	rescue_from ActiveRecord::RecordNotFound, ActionController::RoutingError, with: :error404

	private

	def logged_in?
		!!session[:user_id]
	end

end
