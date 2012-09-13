# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111104113438) do

  create_table "code_prefixes", :force => true do |t|
    t.string   "prefix"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "codes", :force => true do |t|
    t.string   "prefix"
    t.string   "code"
    t.string   "description"
    t.boolean  "historic",    :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conditions", :force => true do |t|
    t.string   "lease_id"
    t.string   "condition_type"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inspections", :force => true do |t|
    t.string   "property_id"
    t.string   "inspection_type"
    t.string   "description"
    t.string   "officer"
    t.date     "inspection_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leases", :force => true do |t|
    t.integer  "property_id"
    t.string   "type_of_lease"
    t.string   "term_of_lease"
    t.string   "lease_per_annum"
    t.string   "expiry_date"
    t.integer  "dr_unique_id"
    t.integer  "gl_unique_id"
    t.decimal  "rent_fee",                :precision => 9,  :scale => 2
    t.string   "reference_number"
    t.string   "invoice_code"
    t.date     "commencement_date"
    t.string   "payment_frequency"
    t.date     "payment_date"
    t.date     "last_rent_review_date"
    t.string   "rent_review"
    t.boolean  "review_valuation",                                       :default => false
    t.string   "renewal_terms"
    t.date     "renewal_date"
    t.date     "cpi_adjustment_date"
    t.string   "lead_in_time"
    t.string   "inc_gst"
    t.string   "who_pays_the_rates"
    t.decimal  "insurance_percentage",    :precision => 10, :scale => 0
    t.decimal  "rates_percentage",        :precision => 10, :scale => 0
    t.string   "power"
    t.string   "environment_waikato"
    t.string   "water"
    t.boolean  "council_resolution",                                     :default => false
    t.string   "council_resolution_link"
    t.string   "site_unit"
    t.integer  "area"
    t.boolean  "risk_insurance",                                         :default => false
    t.string   "risk_insurance_amount"
    t.string   "trading_name"
    t.string   "interest_rate"
    t.string   "credit_check"
    t.string   "previous_rent_1"
    t.string   "previous_rent_2"
    t.string   "previous_rent_3"
    t.string   "premises_type_of_use"
    t.string   "dhb_bond_id"
    t.string   "termination_type"
    t.date     "termination_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maintenance_schedules", :force => true do |t|
    t.string   "property_id"
    t.string   "schedule_type"
    t.string   "description"
    t.date     "schedule_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", :force => true do |t|
    t.string   "type_of_property"
    t.integer  "ra_unique_id"
    t.string   "location_override"
    t.string   "special_legal_description"
    t.string   "name"
    t.integer  "hectares_override"
    t.integer  "capital_value_override"
    t.string   "district_plan_detail_zone"
    t.integer  "gl_unique_id"
    t.string   "block"
    t.integer  "file_11_id"
    t.date     "valuation_date"
    t.date     "purchase_date"
    t.decimal  "lat",                       :precision => 10, :scale => 0
    t.decimal  "long",                      :precision => 10, :scale => 0
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenants", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone_number"
    t.integer  "phone_number_2"
    t.string   "lease_id"
    t.string   "next_of_kin_name"
    t.string   "next_of_kin_address"
    t.string   "next_of_kin_phone_number"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_address"
    t.string   "emergency_contact_phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tenants", ["lease_id"], :name => "index_tenants_on_lease_id"

end
