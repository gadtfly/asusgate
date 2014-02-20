class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :log_visit
  def log_visit
    # Ooops, overloading Heroku DB
    # @visit = Visit.create(ip: request.ip, referrer: request.referrer)
    @visit = Visit.new(ip: request.ip, referrer: request.referrer)
  end
  attr_reader :visit
  helper_method :visit

  def after_sign_in_path_for(user)
    :visits
  end
end
