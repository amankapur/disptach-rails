class Addlocationidtoticket < ActiveRecord::Migration
  def up
    change_table :tickets do |t|
      t.column :location_id, :integer
    end
  end

end
