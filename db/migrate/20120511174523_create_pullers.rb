class CreatePullers < ActiveRecord::Migration
  def change
    create_table :pullers do |t|
      t.integer :puller_number
      t.integer :location_id

      t.timestamps
    end
  end
end
