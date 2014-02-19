class IpsController < ApplicationController
  def index
    Visit.create(ip: request.ip, referrer: request.referrer)
    @ips = IP.all
  end
end
