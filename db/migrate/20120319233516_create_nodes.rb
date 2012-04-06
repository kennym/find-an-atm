class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string "name"
      t.string "address"
      t.float "latitude", :limit => 55
      t.float "longitude", :limit => 55
      t.integer "node_type_id"

      t.timestamps
    end
  end
end
