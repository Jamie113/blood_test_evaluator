class CreateBloodMarkers < ActiveRecord::Migration[7.1]
  def change
    create_table :blood_markers do |t|
      t.string :name

      t.timestamps
    end
  end
end
