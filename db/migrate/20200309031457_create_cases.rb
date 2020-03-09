class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases, id: :uuid do |t|
	t.belongs_to :client, foreign_key: true, type: :uuid
	t.timestamp :symptom_onset_time, null: false
	t.timestamp :likely_exposure_time

      t.timestamps
    end
  end
end
