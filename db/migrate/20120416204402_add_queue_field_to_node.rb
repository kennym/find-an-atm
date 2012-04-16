class AddQueueFieldToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :in_queue, :boolean
  end
end
