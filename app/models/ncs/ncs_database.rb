class NcsDatabase < ActiveRecord::Base
  self.abstract_class = true
  establish_connection 'ncs'
end
