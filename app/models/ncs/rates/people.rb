class Rates::People < NcsDatabase
  set_primary_key 'ra_unique_id'

  belongs_to :property, :foreign_key => 'ra_unique_id'
end
