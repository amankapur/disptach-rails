class DeleteLocationString < ActiveRecord::Migration
  def up
    remove_column :tickets, :location
  end
end
