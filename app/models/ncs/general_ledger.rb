module GeneralLedger
  def self.table_name_prefix
    'gl_'
  end

  autoload :Account, 'general_ledger/account.rb' 
end
