module IpsHelper
  def fucked?
    IP.exists?(request.ip)
  end
end
