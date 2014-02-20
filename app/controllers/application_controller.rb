class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :log_visit

  def log_visit
    Visit.create(ip: request.ip, referrer: request.referrer)
  end
end
