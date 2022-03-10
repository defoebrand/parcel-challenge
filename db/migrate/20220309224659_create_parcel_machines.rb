class CreateParcelMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :parcel_machines do |t|
      t.string :zip, null: false
      t.string :name, null: false
      t.string :machine_type
      t.jsonb :a_name, default: { '0': '', '1': '', '2': '', '3': '', '4': '', '5': '', '6': '', '7': '', '8': '' }
      t.jsonb :coordinates, default: { 'X': '', 'Y': '' }
      t.string :service_hours
      t.string :temp_service_hours
      t.string :temp_service_hours_until
      t.string :temp_service_hours_2
      t.string :temp_service_hours_2_until
      t.jsonb :comment, default: { 'est': '', 'eng': '', 'rus': '', 'lav': '', 'lit': '' }
      t.string :modified

      t.timestamps
    end
  end
end
