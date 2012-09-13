class Regulatory::PropertyRecord < NcsDatabase
  set_primary_key 'property_id'

  # Rates association
  belongs_to :property, :class_name => 'Rates::Property', :foreign_key => 'ra_unique_id'
  belongs_to :street, :class_name => 'Rates::Street'
end
