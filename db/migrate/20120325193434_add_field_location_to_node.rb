class AddFieldLocationToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :location, :string
  end
end
