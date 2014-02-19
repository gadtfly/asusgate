class IP < ActiveRecord::Base
  self.primary_key = :ip
  include IPAttribute
end
