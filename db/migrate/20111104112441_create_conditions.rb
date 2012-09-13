class CreateConditions < ActiveRecord::Migration
  def self.up
    create_table :conditions do |t|
      t.string :lease_id
      t.string :condition_type
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :conditions
  end
end
