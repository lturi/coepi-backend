class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients, id: :uuid do |t|
      t.timestamp :begin_dt
      t.timestamp :last_update_dt
      t.timestamps
    end
  end
end
