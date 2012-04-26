class CreateKookoos < ActiveRecord::Migration
  def change
    create_table :kookoos do |t|

      t.timestamps
    end
  end
end
