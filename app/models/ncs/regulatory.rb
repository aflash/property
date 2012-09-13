module Regulatory
  def self.table_name_prefix
    'rg_'
  end

  autoload :Detail,         'regulatory/detail.rb'
  autoload :PropertyRecord, 'regulatory/property_record.rb'
  autoload :PropertyCode,   'regulatory/property_code.rb'
end
