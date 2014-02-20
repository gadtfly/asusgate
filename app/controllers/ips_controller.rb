class IpsController < ApplicationController
  def index
    @ips = IP.all unless Rails.env.production?
  end
end
