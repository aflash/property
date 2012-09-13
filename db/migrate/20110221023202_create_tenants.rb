class CreateTenants < ActiveRecord::Migration
  def self.up
    create_table :tenants do |t|
      t.string  :name
      t.string  :address
      t.integer :phone_number
      t.integer :phone_number_2
      t.string  :lease_id
      t.string  :next_of_kin_name
      t.string  :next_of_kin_address
      t.string  :next_of_kin_phone_number
      t.string  :emergency_contact_name
      t.string  :emergency_contact_address
      t.string  :emergency_contact_phone_number

      t.timestamps
    end

    add_index :tenants, :lease_id
  end

  def self.down
    drop_table :tenants
  end
end
