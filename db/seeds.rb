require 'open-uri'

URL = 'http://pastebin.com/raw.php?i=ASfYTWgw'

ActiveRecord::Base.logger = nil
puts "reading from #{URL}"
open(URL).readlines.last.split(', ').each { |ip| IP.find_or_create_by_ip(ip) }
puts "#{IP.count} IPs"
