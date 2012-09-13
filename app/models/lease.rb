class Lease < ActiveRecord::Base
  belongs_to :property
  #has_and_belongs_to_many :tenants
  has_many :tenants
  has_many :conditions
  validates_presence_of :property_id
  paginates_per 20
end
