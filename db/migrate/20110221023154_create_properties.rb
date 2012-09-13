class CreateProperties < ActiveRecord::Migration
  def self.up
    create_table :properties do |t|
      t.string :type_of_property
      t.integer :ra_unique_id
      t.string :location_override
      t.string :special_legal_description
      t.string :name
      t.integer :hectares_override
      t.integer :capital_value_override
      t.string :district_plan_detail_zone
      t.integer :gl_unique_id
      t.string :block
      t.integer :file_11_id
      t.date :valuation_date
      t.date :purchase_date
      t.decimal :lat
      t.decimal :long
      t.integer :property_id

      t.timestamps
    end
  end

  def self.down
    drop_table :properties
  end
end
