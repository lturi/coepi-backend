class SetClientBluetoothNotnullColumns < ActiveRecord::Migration[6.0]
  def change
	change_column :client_bluetooth_devices, :bluetooth_hash_prefix, :text, null: false
  end
end
