class CreateInspections < ActiveRecord::Migration
  def self.up
    create_table :inspections do |t|
      t.string :property_id
      t.string :inspection_type
      t.string :description
      t.string :officer
      t.date :inspection_date

      t.timestamps
    end
  end

  def self.down
    drop_table :inspections
  end
end
