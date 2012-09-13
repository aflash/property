module Rates
  def self.table_name_prefix
    'ra_'
  end

  autoload :Property, 'rates/property.rb'
  autoload :People,   'rates/people.rb'
  autoload :Sys,      'rates/sys.rb'
  autoload :Street,   'rates/street.rb'
end
