class SetClientNotnullColumns < ActiveRecord::Migration[6.0]
  def change
	change_column :clients, :begin_dt, :timestamp, null: false
	change_column :clients, :last_update_dt, :timestamp, null: false
  end
end
