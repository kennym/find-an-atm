class ConvertNodeLatitudeAndLongitudeToFloat < ActiveRecord::Migration
  def up
    change_column(:nodes, :latitude, :float)
    change_column(:nodes, :longitude, :float)
  end

  def down
    change_column(:nodes, :latitude, :string)
    change_column(:nodes, :longitude, :string)
  end
end
