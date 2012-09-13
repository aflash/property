class CreateMaintenanceSchedules < ActiveRecord::Migration
  def self.up
    create_table :maintenance_schedules do |t|
      t.string :property_id
      t.string :schedule_type
      t.string :description
      t.date :schedule_date

      t.timestamps
    end
  end

  def self.down
    drop_table :maintenance_schedules
  end
end
