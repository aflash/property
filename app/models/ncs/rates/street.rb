class Rates::Street < NcsDatabase
  set_primary_key 'street_id'

  has_many :properties, :order => 'house_numeric ASC, house_no ASC, valuation_id ASC'

  # Regulatory association
  has_many :property_records, :class_name => 'Regulatory::PropertyRecord'

  default_scope order('address_1 ASC, address_2 ASC')

  def address_1
    self[:address_1].empty? ? nil : self[:address_1]
  end

  def address_2
    self[:address_2].empty? ? nil : self[:address_2]
  end

  # eg  Taradale Road, Onekawa
  def to_s
    [self.address_1, self.address_2].compact.join(', ')
  end
end
