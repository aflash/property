class Property < ActiveRecord::Base
  has_many :leases
  has_many :inspections
  has_many :maintenance_schedules
  accepts_nested_attributes_for :leases, :reject_if => lambda { |a| a[:content].blank? }
  "polymorphic association"
  paginates_per 20
end
