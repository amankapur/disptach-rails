class AddLocationCheckToTickets < ActiveRecord::Migration
  def change
    change_table :tickets do |t|
      t.boolean :location_check 
    end
  end
end
