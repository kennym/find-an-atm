class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string "name"
      t.string "address"
      t.float "latitude", :scale => 12, :precision => 15
      t.float "longitude", :scale => 12, :precision => 15
      t.integer "node_type_id"

      t.timestamps
    end
  end
end
