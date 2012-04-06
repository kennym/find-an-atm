class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string "name"
      t.string "address"
      t.float "latitude"
      t.float "longitude"
      t.integer "node_type_id"

      t.timestamps
    end
  end
end
