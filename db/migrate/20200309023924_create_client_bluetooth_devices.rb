class CreateClientBluetoothDevices < ActiveRecord::Migration[6.0]
  def change
    create_table :client_bluetooth_devices, id: :uuid do |t|
	t.belongs_to :client, foreign_key: true, type: :uuid
	t.text :bluetooth_hash_prefix
      t.timestamps
    end
  end
end
