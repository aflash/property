module Debtors
  def self.table_name_prefix
    'dr_'
  end

  autoload :Account, 'debtors/account.rb' 
end
