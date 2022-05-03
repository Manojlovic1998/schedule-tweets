class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def is_logged_in?
    redirect_to root_path, alert: "You must be logged in to do that." if Current.user.nil?
  end
end
