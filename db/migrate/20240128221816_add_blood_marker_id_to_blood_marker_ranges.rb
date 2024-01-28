class AddBloodMarkerIdToBloodMarkerRanges < ActiveRecord::Migration[7.1]
  def change
    add_column :blood_marker_ranges, :blood_marker_id, :integer
  end
end
