class IpsController < ApplicationController
  def index
    @ips = IP.all if current_user
  end
end
