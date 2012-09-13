class CreateLeases < ActiveRecord::Migration
  def self.up
    create_table :leases do |t|
      t.integer :property_id
      t.string  :type_of_lease
      t.string  :term_of_lease
      t.string  :lease_per_annum
      t.string  :expiry_date
      t.integer :dr_unique_id
      t.integer :gl_unique_id
      t.decimal :rent_fee,          :precision => 9,  :scale => 2
      t.string  :reference_number
      t.string  :invoice_code
      t.date    :commencement_date
      t.string  :payment_frequency
      t.date    :payment_date
      t.date    :last_rent_review_date
      t.string  :rent_review
      t.boolean :review_valuation, :default => false
      t.string  :renewal_terms
      t.date    :renewal_date
      t.date    :cpi_adjustment_date
      t.string  :lead_in_time
      t.string  :inc_gst
      t.string  :who_pays_the_rates
      t.decimal :insurance_percentage
      t.decimal :rates_percentage
      t.string  :power
      t.string  :environment_waikato
      t.string  :water
      t.boolean :council_resolution, :default => false
      t.string  :council_resolution_link
      t.string  :site_unit
      t.integer :area
      t.boolean :risk_insurance, :default => false
      t.string  :risk_insurance_amount
      t.string  :trading_name
      t.string  :interest_rate
      t.string  :credit_check
      t.string  :previous_rent_1
      t.string  :previous_rent_2
      t.string  :previous_rent_3
      t.string  :premises_type_of_use
      t.string  :dhb_bond_id
      t.string  :termination_type
      t.date    :termination_date

      t.timestamps
    end
  end

  def self.down
    drop_table  :leases
  end
end
