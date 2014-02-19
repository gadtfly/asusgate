class IpsController < ApplicationController
  def index
    Visit.create(ip: request.ip, referrer: request.referrer)
    @ips = IP.all unless Rails.env.production?
  end
end
