class CreateCaseBluetoothDevices < ActiveRecord::Migration[6.0]
  def change
    create_table :case_bluetooth_devices, id: :uuid do |t|
	t.belongs_to :case, foreign_key: true, type: :uuid
	t.text :bluetooth_hash, null: false

      t.timestamps
    end
  end
end
