class Regulatory::PropertyCode < NcsDatabase
  # this table has a composite primary key
  set_primary_keys :property_id, :code_id
end
