class CreateLocationInTickets < ActiveRecord::Migration
  def change
    change_table :tickets do |t|
      t.string :location
    end
  end
end
