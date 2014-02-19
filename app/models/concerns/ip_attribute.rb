module IPAttribute
  extend ActiveSupport::Concern

  # Is this a generalizable pattern...
  # or is it just stupid to even go this far?
  included do
    scope :find_by_ip, ->(s){ find_by(ip: IPAddr.new(s).to_i) }
    scope :find_or_create_by_ip, ->(s){ find_or_create_by(ip: IPAddr.new(s).to_i) }
  end

  def ip=(s)
    super(IPAddr.new(s, Socket::AF_INET))
  end

  def ip
    IPAddr.new(super, Socket::AF_INET) if super
  end
end



# Maybe something usable like:

# mount :ip, :to_i do |x|
#   IPAddr.new(x, Socket::AF_INET)
# end

# Though preferably with some kind of type inference/casting instead of that 2nd argument
# Check out `has_secure_password` for possible patterns