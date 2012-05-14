class AddTicketIdToLocationTable < ActiveRecord::Migration
  def change
    change_table :locations do |t|
      t.integer :ticket_id
    end
  end
end
