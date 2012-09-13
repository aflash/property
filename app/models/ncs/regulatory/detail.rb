class Regulatory::Detail < NcsDatabase
  set_primary_key 'details_id'

  def self.file_11?
    self.find('z11RATES').detail_1 != 'Y'
  end
end
