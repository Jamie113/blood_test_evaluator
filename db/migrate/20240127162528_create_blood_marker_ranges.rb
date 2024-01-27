class CreateBloodMarkerRanges < ActiveRecord::Migration[7.1]
  def change
    create_table :blood_marker_ranges do |t|
      t.integer :marker_id
      t.integer :lower_bound
      t.integer :upper_bound
      t.string :range_name

      t.timestamps
    end
  end
end
