class CreateTicketsElements < ActiveRecord::Migration
  def change
    change_table :tickets do |t|
      t.string :caller_number
      t.string :kookoo_number
      t.string :called_number
    end
  end
end
