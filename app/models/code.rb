class Code < ActiveRecord::Base
  default_scope order('description ASC')
  scope :property_type, where(:prefix => 'PROPERTY_TYPE', :historic => false)
  scope :lease_type, where(:prefix => 'LEASE_TYPE', :historic => false)
  scope :lease_term, where(:prefix => 'LEASE_TERM', :historic => false)
  scope :payment_frequency, where(:prefix => 'PAYMENT_FREQUENCY', :historic => false)
  scope :lead_in_time, where(:prefix => 'LEAD_IN', :historic => false)
  scope :site, where(:prefix => 'SITE', :historic => false)
  scope :termination_type, where(:prefix => 'TERMINATION_TYPE', :historic => false)
  scope :condition_type, where(:prefix => 'CONDITION_TYPE', :historic => false)

  paginates_per 20

  def self.get_description(prefix, code)
    begin
      Code.where(:prefix => prefix, :code => code).first.description
    rescue
      nil
    end
  end
end
