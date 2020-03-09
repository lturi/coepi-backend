class CreateExposures < ActiveRecord::Migration[6.0]
  def change
    create_table :exposures, id: :uuid do |t|
	t.belongs_to :client, foreign_key: true, type: :uuid
	t.belongs_to :cases, foreign_key: true, type: :uuid
	t.text :geohash, null: false
	t.timestamp :start_timeband, null: false
	t.timestamp :end_timeband, null: false

      t.timestamps
    end
  end
end
