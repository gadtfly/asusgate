class Visit < ActiveRecord::Base
  include IPAttribute

  def fucked?
    IP.exists?(ip.to_s)
  end

  def location
    Geocoder.search(ip.to_s).first.address
  end

  def domain
    Resolv.getname(ip.to_s)
  rescue
    'unknown'
  end
end
