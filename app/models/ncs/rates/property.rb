class Rates::Property < NcsDatabase
  set_primary_key 'ra_unique_id'

  has_one :people, :foreign_key => 'ra_unique_id'
  belongs_to :street

  # Regulatory association
  has_many :property_records, :class_name => 'Regulatory::PropertyRecord',
    :foreign_key => 'ra_unique_id'

  # define_index do
  #   indexes valuation_id, :sortable => true
  #   indexes house_no, :sortable => true
  #   indexes legal_description
  #   indexes [street.address_1, street.address_2], :as => :street_address,
  #     :sortable => true 
  # 
  #   has street_id, house_numeric
  # end

  def location
    # eg  123A Taradale Road, Onekawa
    if self.house_numeric == 0
      self.street.to_s
    else
      self.house_no + ' ' + self.street.to_s
    end
  end

#  def to_s
#    self.valuation_id + ' ' + self.location
#  end
end
