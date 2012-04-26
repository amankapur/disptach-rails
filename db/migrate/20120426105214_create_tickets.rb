class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :number

      t.timestamps
    end
  end
end
