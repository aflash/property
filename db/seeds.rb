# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
codes = Code.create([
  { :prefix => 'LEAD_IN', :code => '3M', :description => '3 Months' },
  { :prefix => 'LEAD_IN', :code => '6M', :description => '6 Months' },
  { :prefix => 'LEASE_TYPE', :code => 'FT', :description => 'Fixed Term' },
  { :prefix => 'LEASE_TYPE', :code => 'LTO', :description => 'Licence to Occupy' },
  { :prefix => 'LEASE_TYPE', :code => 'PH', :description => 'Pensioner Housing' },
  { :prefix => 'LEASE_TYPE', :code => 'COM', :description => 'Commercial' },
  { :prefix => 'LEASE_TYPE', :code => 'GR', :description => 'Grazing' },
  { :prefix => 'LEASE_TYPE', :code => 'OD', :description => 'Outdoor Dinning' },
  { :prefix => 'LEASE_TYPE', :code => 'RES', :description => 'Residential' },
  { :prefix => 'LEASE_TYPE', :code => 'AIR', :description => 'Airspace' },
  { :prefix => 'LEASE_TERM', :code => '6MONTHS', :description => 'Six Month Term' },
  { :prefix => 'LEASE_TERM', :code => '1YEAR', :description => 'One Year Term' },
  { :prefix => 'LEASE_TERM', :code => '2YEAR', :description => 'Two Year Term' },
  { :prefix => 'LEASE_TERM', :code => '3YEAR', :description => 'Three Year Term' },
  { :prefix => 'LEASE_TERM', :code => '4YEAR', :description => 'Four Year Term' },
  { :prefix => 'LEASE_TERM', :code => '5YEAR', :description => 'Five Year Term' },
  { :prefix => 'LEASE_TERM', :code => '10YEAR', :description => 'Ten Year Term' },
  { :prefix => 'PAYMENT_FREQUENCY', :code => '1M', :description => 'Monthly' },
  { :prefix => 'PAYMENT_FREQUENCY', :code => '3M', :description => 'Quarterly' },
  { :prefix => 'PAYMENT_FREQUENCY', :code => '6M', :description => '6 monthly' },
  { :prefix => 'PAYMENT_FREQUENCY', :code => '1Y', :description => 'Yearly' },
  { :prefix => 'PROPERTY_TYPE', :code => 'RES', :description => 'Residential' },
  { :prefix => 'PROPERTY_TYPE', :code => 'COM', :description => 'Commercial' },
  { :prefix => 'TERMINATION_TYPE', :code => 'SUR', :description => 'Surrender' },
  { :prefix => 'TERMINATION_TYPE', :code => 'CAN', :description => 'Cancelled' },
  { :prefix => 'TERMINATION_TYPE', :code => 'BR', :description => 'Breach' }
])

code_prefixes = CodePrefix.create([
  { :prefix => 'LEAD_IN', :description => 'Lead In Time' },
  { :prefix => 'LEASE_TYPE', :description => 'Lease Type' },
  { :prefix => 'LEASE_TERM', :description => 'Lease Term' },
  { :prefix => 'PAYMENT_FREQUENCY', :description => 'Payment Frequency' },
  { :prefix => 'PROPERTY_TYPE', :description => 'Property Type' },
  { :prefix => 'TERMINATION_TYPE', :description => 'Termination Type' }
])
